﻿/*
 * Copyright 2012 ZXing.Net authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

using UnityEngine;

namespace ZXing.Unity
{
    /// <summary>
    /// Interface for a smart class to decode the barcode inside a bitmap object
    /// </summary>
    [System.CLSCompliant(false)]
    public partial interface IBarcodeReader
    {
        /// <summary>
        /// Decodes the specified barcode bitmap.
        /// </summary>
        /// <param name="rawColor32">The image as Color32 array.</param>
        /// <param name="width">width of the image which is represented by rawColor32</param>
        /// <param name="height">height of the image which is represented by rawColor32</param>
        /// <returns>the result data or null</returns>
        [System.CLSCompliant(false)]
        Result Decode(Color32[] rawColor32, int width, int height);
    }
}
