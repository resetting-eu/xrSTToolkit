﻿/*
 * Copyright 2013 ZXing.Net authors
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

namespace ZXing
{
    /// <summary>
    /// for compatibility with .net 4.0
    /// </summary>
    public delegate void Action();
    /// <summary>
    /// for compatibility with .net 4.0
    /// </summary>
    /// <typeparam name="T1">The type of the 1.</typeparam>
    /// <param name="param1">The param1.</param>
    public delegate void Action<in T1>(T1 param1);
    /// <summary>
    /// for compatibility with .net 4.0
    /// </summary>
    /// <typeparam name="T1">The type of the 1.</typeparam>
    /// <typeparam name="T2">The type of the 2.</typeparam>
    /// <param name="param1">The param1.</param>
    /// <param name="param2">The param2.</param>
    public delegate void Action<in T1, in T2>(T1 param1, T2 param2);
    /// <summary>
    /// for compatibility with .net 4.0
    /// </summary>
    /// <typeparam name="T1">The type of the 1.</typeparam>
    /// <typeparam name="T2">The type of the 2.</typeparam>
    /// <typeparam name="T3">The type of the 3.</typeparam>
    /// <param name="param1">The param1.</param>
    /// <param name="param2">The param2.</param>
    /// <param name="param3">The param3.</param>
    public delegate void Action<in T1, in T2, in T3>(T1 param1, T2 param2, T3 param3);
    /// <summary>
    /// for compatibility with .net 4.0
    /// </summary>
    /// <typeparam name="T1">The type of the 1.</typeparam>
    /// <typeparam name="T2">The type of the 2.</typeparam>
    /// <typeparam name="T3">The type of the 3.</typeparam>
    /// <typeparam name="T4">The type of the 4.</typeparam>
    /// <param name="param1">The param1.</param>
    /// <param name="param2">The param2.</param>
    /// <param name="param3">The param3.</param>
    /// <param name="param4">The param4.</param>
    public delegate void Action<in T1, in T2, in T3, in T4>(T1 param1, T2 param2, T3 param3, T4 param4);
}