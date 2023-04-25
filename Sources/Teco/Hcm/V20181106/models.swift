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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension Hcm {
    /// 识别出的算术式信息及评估结果
    public struct Item: TCOutputModel {
        /// 识别的算式是否正确，算式运算结果:
        /// ‘YES’:正确
        /// ‘NO’: 错误
        /// ‘NA’: 非法参数
        /// ‘EMPTY’: 未作答
        public let item: String

        /// 识别出的算式，识别出的文本行字符串
        public let itemString: String

        /// 识别的算式在图片上的位置信息，文本行在旋转纠正之后的图像中的像素坐 标，表示为(左上角 x, 左上角 y，宽 width， 高 height)
        public let itemCoord: ItemCoord

        /// 错题推荐答案，算式运算结果正确返回为 ""，算式运算结果错误返回推荐答案 (注:暂不支持多个关系运算符(如 1<10<7)、 无关系运算符(如 frac(1,2)+frac(2,3))、单 位换算(如 1 元=100 角)错题的推荐答案 返回)
        /// (注:使用@@标记答案填写区域)
        public let answer: String

        /// 算式题型编号，如加减乘除四则题型，具体题型及编号如下：1 加减乘除四则 2 加减乘除已知结果求运算因子3 判断大小 4 约等于估算 5 带余数除法 6 分数四则运算 7 单位换算 8 竖式加减法 9 竖式乘除法 10 脱式计算 11 解方程
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expressionType: String?

        /// 文本行置信度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemConf: Float?

        /// 用于标识题目 id，如果有若干算式属于同一 题，则其对应的 id 相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let questionId: String?

        enum CodingKeys: String, CodingKey {
            case item = "Item"
            case itemString = "ItemString"
            case itemCoord = "ItemCoord"
            case answer = "Answer"
            case expressionType = "ExpressionType"
            case itemConf = "ItemConf"
            case questionId = "QuestionId"
        }
    }

    /// 目标算式在图片上的坐标信息
    public struct ItemCoord: TCOutputModel {
        /// 算式高度
        public let height: Int64

        /// 算式宽度
        public let width: Int64

        /// 算式图的左上角横坐标
        public let x: Int64

        /// 算式图的左上角纵坐标
        public let y: Int64

        enum CodingKeys: String, CodingKey {
            case height = "Height"
            case width = "Width"
            case x = "X"
            case y = "Y"
        }
    }
}
