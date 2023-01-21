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

extension Rkp {
    /// 设备信息
    public struct DevInfoQ: TCOutputModel {
        /// devid
        public let openId: String

        /// 风险值
        public let riskScore: Int64

        /// 风险详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskInfo: [RiskDetail]?

        /// 概率值
        public let probability: Float

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case riskScore = "RiskScore"
            case riskInfo = "RiskInfo"
            case probability = "Probability"
        }
    }

    /// 风险详情
    public struct RiskDetail: TCOutputModel {
        /// 风险码
        public let riskCode: Int64

        /// 风险详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCodeValue: String?

        enum CodingKeys: String, CodingKey {
            case riskCode = "RiskCode"
            case riskCodeValue = "RiskCodeValue"
        }
    }

    /// 风险信息
    public struct RiskInfo: TCOutputModel {
        /// 风险码
        public let key: Int64

        /// 风险详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
}
