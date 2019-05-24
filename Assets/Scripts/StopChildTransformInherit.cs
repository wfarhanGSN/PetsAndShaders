    using System.Collections.Generic;
    using System.Collections;
    using UnityEngine;

    public class StopChildTransformInherit : MonoBehaviour
    {

        Vector3 initialPosition;
        Quaternion initialRotation;
        Vector3 initialScale;
        void Start ()
        {
            initialPosition = transform.position;
            initialRotation = transform.rotation;
            initialScale = transform.localScale;
        }

        void Update ()
        {
            transform.rotation = initialRotation;
            transform.position = initialPosition;
            transform.localScale = initialScale;
        }
    }