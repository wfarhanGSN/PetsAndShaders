using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SpawnMagicAbilityScript : MonoBehaviour {

	[System.Serializable]
	public class ShakeParameters {
		public bool shake;
		public List<float> delays = new List<float>();
	}

	public Text effectName;
	public GameObject cameras;
	public List<GameObject> VFXs = new List<GameObject> ();
	public List<ShakeParameters> VFXsShakeParameters = new List<ShakeParameters> ();

	private int count = 0;
	private GameObject effectToSpawn;
	private ShakeParameters effectShakeParameters;
	private List<Camera> camerasList = new List<Camera> ();

	void Start () {

		for (int i = 0; i < cameras.transform.childCount; i++) {
			camerasList.Add (cameras.transform.GetChild(i).gameObject.GetComponent<Camera>());
		}

		if (VFXs.Count > 0)
			effectToSpawn = VFXs [0];
		else
			Debug.Log ("No Effects added to the VFXs List");
		
		if(VFXsShakeParameters.Count > 0)
			effectShakeParameters = VFXsShakeParameters [0];
		else
			Debug.Log ("No Delays added to the ShakeDelays List");
		
		if (effectName != null) 
			effectName.text = effectToSpawn.name;
	}

	void Update () {
		if (Input.GetKeyDown (KeyCode.Space) || Input.GetMouseButtonDown (0) )
			SpawnVFX ();
		if (Input.GetKeyDown (KeyCode.D))
			Next ();
		if (Input.GetKeyDown (KeyCode.A)) 
			Previous ();	
		if (Input.GetKeyDown (KeyCode.C))
			SwitchCamera ();	
		if (Input.GetKeyDown (KeyCode.X))
			ZoomIn ();
		if (Input.GetKeyDown (KeyCode.Z))
			ZoomOut ();
	}

	public void SpawnVFX () {
		GameObject vfx;

		if (effectShakeParameters.shake && cameras != null)
			StartCoroutine (ShakeDelay (effectShakeParameters.delays));

		vfx = Instantiate (effectToSpawn);

		var ps = GetFirstPS (vfx);

		Destroy (vfx, ps.main.duration + ps.main.startLifetime.constantMax + 1);
	}

	public void Next () {
		count++;

		if (count > VFXs.Count)
			count = 0;

		for(int i = 0; i < VFXs.Count; i++){
			if (count == i) {
				effectToSpawn = VFXs [i];
				effectShakeParameters = VFXsShakeParameters [i];
			}
			if (effectName != null)	effectName.text = effectToSpawn.name;
		}
	}

	public void Previous () {
		count--;

		if (count < 0)
			count = VFXs.Count;

		for (int i = 0; i < VFXs.Count; i++) {
			if (count == i) {
				effectToSpawn = VFXs [i];
				effectShakeParameters = VFXsShakeParameters [i];
			}
			if (effectName != null)	effectName.text = effectToSpawn.name;
		}
	}

	public void ZoomIn () {
		for (int i = 0; i < camerasList.Count; i++) {
			camerasList [i].fieldOfView += 5;
		}
	}

	public void ZoomOut () {
		for (int i = 0; i < camerasList.Count; i++) {
			camerasList [i].fieldOfView -= 5;
		}
	}

	public void SwitchCamera () {
		for (int i = 0; i < camerasList.Count; i++) {
			if (camerasList [i].gameObject.activeSelf) {
				camerasList [i].gameObject.SetActive (false);
				if ((i+1) == camerasList.Count) {
					camerasList [0].gameObject.SetActive (true);
					break;
				} else {
					camerasList [i+1].gameObject.SetActive (true);
					break;
				}
			}
		}
	}

	public ParticleSystem GetFirstPS (GameObject vfx){
		var ps = vfx.GetComponent<ParticleSystem> ();
		if (ps == null && vfx.transform.childCount > 0) {
			foreach (Transform t in vfx.transform) {
				ps = t.GetComponent<ParticleSystem> ();
				if(ps != null)
					return ps;
			}
		}
		return ps;
	}

	IEnumerator ShakeDelay (List<float> delay){
		for (int i = 0; i < delay.Count; i++) {
			yield return new WaitForSeconds (delay[i]);
			cameras.GetComponent<CameraShakeSimpleScript> ().ShakeCamera ();
		}
	}
}
