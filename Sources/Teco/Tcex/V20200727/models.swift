//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Tcex {
    /// 每个算法的返回结果
    public struct AlgorithmResult: TCOutputModel {
        /// 算法ID
        public let algoId: String

        /// 算法名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let algoName: String?

        /// 算法返回的结果。
        /// - 当算法类型为“OCR（1）”时，结果为文本字符串
        /// - 当算法类型为“文本分类（2）”时，结果字符串为json对象数组：
        ///   Class：分类结果
        ///   Confidence：置信度
        /// - 算法类型为“情感分析（3）”时，结果字符串为json对象：
        ///   Positive：正面情感概率
        ///   Negative：负面情感概率
        ///   Neutral：中性情感概率
        /// - 当算法类型为“合同要素抽取（4）”时，结果字符串为json对象数组：
        ///   NodeName：一级要素名称
        ///   ItemName：二级要素名称
        ///   Content：要素文本内容
        /// - 当算法类型为“实体识别（5）”时，结果字符串为json对象数组：
        ///   - Entity：实体类型
        ///   - Content：实体文本内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 算法调用错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let error: String?

        /// 算法类型：
        /// 1：OCR算法
        /// 2：文本分类算法
        /// 3：情感分析算法
        /// 4：合同要素抽取算法
        /// 5、实体识别算法
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let algoType: Int64?

        enum CodingKeys: String, CodingKey {
            case algoId = "AlgoId"
            case algoName = "AlgoName"
            case result = "Result"
            case error = "Error"
            case algoType = "AlgoType"
        }
    }
}
