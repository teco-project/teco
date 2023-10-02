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

extension Cdwpg {
    /// 磁盘规格
    public struct CBSSpec: TCInputModel {
        /// 盘类型
        public let diskType: String

        /// 大小
        public let diskSize: Int64

        /// 个数
        public let diskCount: Int64

        public init(diskType: String, diskSize: Int64, diskCount: Int64) {
            self.diskType = diskType
            self.diskSize = diskSize
            self.diskCount = diskCount
        }

        enum CodingKeys: String, CodingKey {
            case diskType = "DiskType"
            case diskSize = "DiskSize"
            case diskCount = "DiskCount"
        }
    }

    /// 计费时间参数
    public struct ChargeProperties: TCInputModel {
        /// 1-需要自动续期
        public let renewFlag: Int64

        /// 订单时间范围
        public let timeSpan: Int64

        /// 时间单位，一般为h和m
        public let timeUnit: String

        /// 计费类型0-按量计费，1-包年包月
        public let payMode: Int64?

        /// PREPAID、POSTPAID_BY_HOUR
        public let chargeType: String?

        public init(renewFlag: Int64, timeSpan: Int64, timeUnit: String, payMode: Int64? = nil, chargeType: String? = nil) {
            self.renewFlag = renewFlag
            self.timeSpan = timeSpan
            self.timeUnit = timeUnit
            self.payMode = payMode
            self.chargeType = chargeType
        }

        enum CodingKeys: String, CodingKey {
            case renewFlag = "RenewFlag"
            case timeSpan = "TimeSpan"
            case timeUnit = "TimeUnit"
            case payMode = "PayMode"
            case chargeType = "ChargeType"
        }
    }

    /// 资源规格
    public struct ResourceSpecNew: TCInputModel {
        /// 资源名称
        public let specName: String

        /// 资源数
        public let count: Int64

        /// 磁盘信息
        public let diskSpec: CBSSpec

        /// 资源类型，DATA
        public let type: String

        public init(specName: String, count: Int64, diskSpec: CBSSpec, type: String) {
            self.specName = specName
            self.count = count
            self.diskSpec = diskSpec
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case specName = "SpecName"
            case count = "Count"
            case diskSpec = "DiskSpec"
            case type = "Type"
        }
    }

    /// 标签描述
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签的键
        public let tagKey: String

        /// 标签的值
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }
}
