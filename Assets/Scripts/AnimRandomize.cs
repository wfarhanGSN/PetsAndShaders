using UnityEngine;

public class AnimRandomize : StateMachineBehaviour
{
    [SerializeField]
    private int[] weights;
    private int total;

    void Awake()
    {
        total=0;
        for(var i = 0; i< weights.Length; i++){
            total += weights[i];
        }

    }
    
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        int pick = Random.Range(1,total+1); //range is max exclusive

        int cumTotal=0;
        for(var i = 0; i< weights.Length; i++)
        {
            cumTotal+=weights[i];
            if (pick<=cumTotal)
            {
                animator.SetInteger("AnimRandomize",i);
                break;
            }
        }
    }
}