using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraShake : MonoBehaviour
{
    [SerializeField]
    private Animator cameraAnimator;

    [SerializeField]
    private string triggerName="shake";
    // Start is called before the first frame update

    public void DoShake()
    {
        cameraAnimator.SetTrigger(triggerName);
    }
}
