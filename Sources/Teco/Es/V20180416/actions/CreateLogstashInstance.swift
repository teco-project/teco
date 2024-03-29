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

import Logging
import NIOCore
import TecoCore

extension Es {
    /// CreateLogstashInstance请求参数结构体
    public struct CreateLogstashInstanceRequest: TCRequest {
        /// 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        public let instanceName: String

        /// 可用区
        public let zone: String

        /// 实例版本（支持"6.8.13"、"7.10.1"）
        public let logstashVersion: String

        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 节点数量（2-50个）
        public let nodeNum: UInt64?

        /// 计费类型
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：按小时后付费
        /// 默认值POSTPAID_BY_HOUR
        public let chargeType: String?

        /// 包年包月购买时长（单位由参数TimeUnit决定）
        public let chargePeriod: UInt64?

        /// 计费时长单位（ChargeType为PREPAID时需要设置，默认值为“m”，表示月，当前只支持“m”）
        public let timeUnit: String?

        /// 是否自动使用代金券
        /// - 0：不自动使用
        /// - 1：自动使用
        /// 默认值0
        public let autoVoucher: Int64?

        /// 代金券ID列表（目前仅支持指定一张代金券）
        public let voucherIds: [String]?

        /// 自动续费标识
        /// - RENEW_FLAG_AUTO：自动续费
        /// - RENEW_FLAG_MANUAL：不自动续费，用户手动续费
        /// ChargeType为PREPAID时需要设置，如不传递该参数，普通用户默认不自动续费，SVIP用户自动续费
        public let renewFlag: String?

        /// 节点规格
        /// - LOGSTASH.S1.SMALL2：1核2G
        /// - LOGSTASH.S1.MEDIUM4：2核4G
        /// - LOGSTASH.S1.MEDIUM8：2核8G
        /// - LOGSTASH.S1.LARGE16：4核16G
        /// - LOGSTASH.S1.2XLARGE32：8核32G
        /// - LOGSTASH.S1.4XLARGE32：16核32G
        /// - LOGSTASH.S1.4XLARGE64：16核64G
        public let nodeType: String?

        /// 节点磁盘类型
        /// - CLOUD_SSD：SSD云硬盘
        /// - CLOUD_PREMIUM：高硬能云硬盘
        /// 默认值CLOUD_SSD
        public let diskType: String?

        /// 节点磁盘容量（单位GB）
        public let diskSize: UInt64?

        /// License类型
        /// - oss：开源版
        /// - xpack：xpack版
        /// 默认值xpack
        public let licenseType: String?

        /// 标签信息列表
        public let tagList: [TagInfo]?

        /// 可维护时间段
        public let operationDuration: OperationDuration?

        public init(instanceName: String, zone: String, logstashVersion: String, vpcId: String, subnetId: String, nodeNum: UInt64? = nil, chargeType: String? = nil, chargePeriod: UInt64? = nil, timeUnit: String? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, renewFlag: String? = nil, nodeType: String? = nil, diskType: String? = nil, diskSize: UInt64? = nil, licenseType: String? = nil, tagList: [TagInfo]? = nil, operationDuration: OperationDuration? = nil) {
            self.instanceName = instanceName
            self.zone = zone
            self.logstashVersion = logstashVersion
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.nodeNum = nodeNum
            self.chargeType = chargeType
            self.chargePeriod = chargePeriod
            self.timeUnit = timeUnit
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.renewFlag = renewFlag
            self.nodeType = nodeType
            self.diskType = diskType
            self.diskSize = diskSize
            self.licenseType = licenseType
            self.tagList = tagList
            self.operationDuration = operationDuration
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case zone = "Zone"
            case logstashVersion = "LogstashVersion"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case nodeNum = "NodeNum"
            case chargeType = "ChargeType"
            case chargePeriod = "ChargePeriod"
            case timeUnit = "TimeUnit"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case renewFlag = "RenewFlag"
            case nodeType = "NodeType"
            case diskType = "DiskType"
            case diskSize = "DiskSize"
            case licenseType = "LicenseType"
            case tagList = "TagList"
            case operationDuration = "OperationDuration"
        }
    }

    /// CreateLogstashInstance返回参数结构体
    public struct CreateLogstashInstanceResponse: TCResponse {
        /// 实例ID
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 创建Logstash实例
    ///
    /// 用于创建Logstash实例
    @inlinable
    public func createLogstashInstance(_ input: CreateLogstashInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogstashInstanceResponse> {
        self.client.execute(action: "CreateLogstashInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Logstash实例
    ///
    /// 用于创建Logstash实例
    @inlinable
    public func createLogstashInstance(_ input: CreateLogstashInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogstashInstanceResponse {
        try await self.client.execute(action: "CreateLogstashInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Logstash实例
    ///
    /// 用于创建Logstash实例
    @inlinable
    public func createLogstashInstance(instanceName: String, zone: String, logstashVersion: String, vpcId: String, subnetId: String, nodeNum: UInt64? = nil, chargeType: String? = nil, chargePeriod: UInt64? = nil, timeUnit: String? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, renewFlag: String? = nil, nodeType: String? = nil, diskType: String? = nil, diskSize: UInt64? = nil, licenseType: String? = nil, tagList: [TagInfo]? = nil, operationDuration: OperationDuration? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogstashInstanceResponse> {
        self.createLogstashInstance(.init(instanceName: instanceName, zone: zone, logstashVersion: logstashVersion, vpcId: vpcId, subnetId: subnetId, nodeNum: nodeNum, chargeType: chargeType, chargePeriod: chargePeriod, timeUnit: timeUnit, autoVoucher: autoVoucher, voucherIds: voucherIds, renewFlag: renewFlag, nodeType: nodeType, diskType: diskType, diskSize: diskSize, licenseType: licenseType, tagList: tagList, operationDuration: operationDuration), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Logstash实例
    ///
    /// 用于创建Logstash实例
    @inlinable
    public func createLogstashInstance(instanceName: String, zone: String, logstashVersion: String, vpcId: String, subnetId: String, nodeNum: UInt64? = nil, chargeType: String? = nil, chargePeriod: UInt64? = nil, timeUnit: String? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, renewFlag: String? = nil, nodeType: String? = nil, diskType: String? = nil, diskSize: UInt64? = nil, licenseType: String? = nil, tagList: [TagInfo]? = nil, operationDuration: OperationDuration? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogstashInstanceResponse {
        try await self.createLogstashInstance(.init(instanceName: instanceName, zone: zone, logstashVersion: logstashVersion, vpcId: vpcId, subnetId: subnetId, nodeNum: nodeNum, chargeType: chargeType, chargePeriod: chargePeriod, timeUnit: timeUnit, autoVoucher: autoVoucher, voucherIds: voucherIds, renewFlag: renewFlag, nodeType: nodeType, diskType: diskType, diskSize: diskSize, licenseType: licenseType, tagList: tagList, operationDuration: operationDuration), region: region, logger: logger, on: eventLoop)
    }
}
