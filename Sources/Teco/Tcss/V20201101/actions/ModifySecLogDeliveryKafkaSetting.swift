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

extension Tcss {
    /// ModifySecLogDeliveryKafkaSetting请求参数结构体
    public struct ModifySecLogDeliveryKafkaSettingRequest: TCRequest {
        /// 实例ID
        public let instanceID: String?

        /// 实例名称
        public let instanceName: String?

        /// 域名
        public let domain: String?

        /// 用户名
        public let user: String?

        /// 密码
        public let password: String?

        /// 日志类型队列
        public let logTypeList: [SecLogDeliveryKafkaSettingInfo]?

        /// 接入类型
        public let accessType: Int64?

        /// kafka版本号
        public let kafkaVersion: String?

        /// 地域ID
        public let regionID: String?

        public init(instanceID: String? = nil, instanceName: String? = nil, domain: String? = nil, user: String? = nil, password: String? = nil, logTypeList: [SecLogDeliveryKafkaSettingInfo]? = nil, accessType: Int64? = nil, kafkaVersion: String? = nil, regionID: String? = nil) {
            self.instanceID = instanceID
            self.instanceName = instanceName
            self.domain = domain
            self.user = user
            self.password = password
            self.logTypeList = logTypeList
            self.accessType = accessType
            self.kafkaVersion = kafkaVersion
            self.regionID = regionID
        }

        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
            case instanceName = "InstanceName"
            case domain = "Domain"
            case user = "User"
            case password = "Password"
            case logTypeList = "LogTypeList"
            case accessType = "AccessType"
            case kafkaVersion = "KafkaVersion"
            case regionID = "RegionID"
        }
    }

    /// ModifySecLogDeliveryKafkaSetting返回参数结构体
    public struct ModifySecLogDeliveryKafkaSettingResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新安全日志投递kafka设置
    @inlinable @discardableResult
    public func modifySecLogDeliveryKafkaSetting(_ input: ModifySecLogDeliveryKafkaSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecLogDeliveryKafkaSettingResponse> {
        self.client.execute(action: "ModifySecLogDeliveryKafkaSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新安全日志投递kafka设置
    @inlinable @discardableResult
    public func modifySecLogDeliveryKafkaSetting(_ input: ModifySecLogDeliveryKafkaSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecLogDeliveryKafkaSettingResponse {
        try await self.client.execute(action: "ModifySecLogDeliveryKafkaSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新安全日志投递kafka设置
    @inlinable @discardableResult
    public func modifySecLogDeliveryKafkaSetting(instanceID: String? = nil, instanceName: String? = nil, domain: String? = nil, user: String? = nil, password: String? = nil, logTypeList: [SecLogDeliveryKafkaSettingInfo]? = nil, accessType: Int64? = nil, kafkaVersion: String? = nil, regionID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecLogDeliveryKafkaSettingResponse> {
        self.modifySecLogDeliveryKafkaSetting(.init(instanceID: instanceID, instanceName: instanceName, domain: domain, user: user, password: password, logTypeList: logTypeList, accessType: accessType, kafkaVersion: kafkaVersion, regionID: regionID), region: region, logger: logger, on: eventLoop)
    }

    /// 更新安全日志投递kafka设置
    @inlinable @discardableResult
    public func modifySecLogDeliveryKafkaSetting(instanceID: String? = nil, instanceName: String? = nil, domain: String? = nil, user: String? = nil, password: String? = nil, logTypeList: [SecLogDeliveryKafkaSettingInfo]? = nil, accessType: Int64? = nil, kafkaVersion: String? = nil, regionID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecLogDeliveryKafkaSettingResponse {
        try await self.modifySecLogDeliveryKafkaSetting(.init(instanceID: instanceID, instanceName: instanceName, domain: domain, user: user, password: password, logTypeList: logTypeList, accessType: accessType, kafkaVersion: kafkaVersion, regionID: regionID), region: region, logger: logger, on: eventLoop)
    }
}
