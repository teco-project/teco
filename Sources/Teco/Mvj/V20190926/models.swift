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

extension Mvj {
    /// 返回结构
    public struct Data: TCOutputModel {
        /// 操作时间戳，单位秒
        public let postTime: UInt64

        /// 用户ID
        /// accountType不同对应不同的用户ID。如果是QQ或微信用户则填入对应的openId
        public let uid: String

        /// 操作来源的外网IP
        public let userIp: String

        /// 0~100：营销价值评分，分值越高，价值越大
        /// [0,50]低价值
        /// [50,70]价值一般
        /// [70,100]高价值
        public let valueScore: UInt64

        enum CodingKeys: String, CodingKey {
            case postTime = "PostTime"
            case uid = "Uid"
            case userIp = "UserIp"
            case valueScore = "ValueScore"
        }
    }
}
