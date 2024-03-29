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

extension Cloudhsm {
    /// ModifyVsmAttributes请求参数结构体
    public struct ModifyVsmAttributesRequest: TCRequest {
        /// 资源Id
        public let resourceId: String

        /// UpdateResourceName-修改资源名称,
        /// UpdateSgIds-修改安全组名称,
        /// UpdateNetWork-修改网络,
        /// Default-默认不修改
        public let type: [String]

        /// 资源名称
        public let resourceName: String?

        /// 安全组Id
        public let sgIds: [String]?

        /// 虚拟专网Id
        public let vpcId: String?

        /// 子网Id
        public let subnetId: String?

        /// 告警开关，0表示关闭告警，1表示启用告警
        public let alarmStatus: Int64?

        public init(resourceId: String, type: [String], resourceName: String? = nil, sgIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, alarmStatus: Int64? = nil) {
            self.resourceId = resourceId
            self.type = type
            self.resourceName = resourceName
            self.sgIds = sgIds
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.alarmStatus = alarmStatus
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case type = "Type"
            case resourceName = "ResourceName"
            case sgIds = "SgIds"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case alarmStatus = "AlarmStatus"
        }
    }

    /// ModifyVsmAttributes返回参数结构体
    public struct ModifyVsmAttributesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改VSM属性
    @inlinable @discardableResult
    public func modifyVsmAttributes(_ input: ModifyVsmAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVsmAttributesResponse> {
        self.client.execute(action: "ModifyVsmAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VSM属性
    @inlinable @discardableResult
    public func modifyVsmAttributes(_ input: ModifyVsmAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVsmAttributesResponse {
        try await self.client.execute(action: "ModifyVsmAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VSM属性
    @inlinable @discardableResult
    public func modifyVsmAttributes(resourceId: String, type: [String], resourceName: String? = nil, sgIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, alarmStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVsmAttributesResponse> {
        self.modifyVsmAttributes(.init(resourceId: resourceId, type: type, resourceName: resourceName, sgIds: sgIds, vpcId: vpcId, subnetId: subnetId, alarmStatus: alarmStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VSM属性
    @inlinable @discardableResult
    public func modifyVsmAttributes(resourceId: String, type: [String], resourceName: String? = nil, sgIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, alarmStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVsmAttributesResponse {
        try await self.modifyVsmAttributes(.init(resourceId: resourceId, type: type, resourceName: resourceName, sgIds: sgIds, vpcId: vpcId, subnetId: subnetId, alarmStatus: alarmStatus), region: region, logger: logger, on: eventLoop)
    }
}
