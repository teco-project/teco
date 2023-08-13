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

extension Teo {
    /// ModifyOriginGroup请求参数结构体
    public struct ModifyOriginGroupRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 源站组ID。
        public let originGroupId: String

        /// 源站类型，取值有：
        /// - self：自有源站；
        /// - third_party：第三方源站；
        /// - cos：腾讯云COS源站。
        public let originType: String

        /// 源站组名称。
        public let originGroupName: String

        /// 源站配置类型，当OriginType=self时，取值有：
        /// - area：按区域配置；
        /// - weight： 按权重配置；
        /// - proto： 按HTTP协议配置。当OriginType=third_party/cos时放空。
        public let configurationType: String

        /// 源站记录信息。
        public let originRecords: [OriginRecord]

        /// 回源Host，仅当OriginType=self时可以设置。
        /// 不填写，表示使用已有配置。
        public let hostHeader: String?

        public init(zoneId: String, originGroupId: String, originType: String, originGroupName: String, configurationType: String, originRecords: [OriginRecord], hostHeader: String? = nil) {
            self.zoneId = zoneId
            self.originGroupId = originGroupId
            self.originType = originType
            self.originGroupName = originGroupName
            self.configurationType = configurationType
            self.originRecords = originRecords
            self.hostHeader = hostHeader
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case originGroupId = "OriginGroupId"
            case originType = "OriginType"
            case originGroupName = "OriginGroupName"
            case configurationType = "ConfigurationType"
            case originRecords = "OriginRecords"
            case hostHeader = "HostHeader"
        }
    }

    /// ModifyOriginGroup返回参数结构体
    public struct ModifyOriginGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改源站组
    @inlinable @discardableResult
    public func modifyOriginGroup(_ input: ModifyOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOriginGroupResponse> {
        self.client.execute(action: "ModifyOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改源站组
    @inlinable @discardableResult
    public func modifyOriginGroup(_ input: ModifyOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOriginGroupResponse {
        try await self.client.execute(action: "ModifyOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改源站组
    @inlinable @discardableResult
    public func modifyOriginGroup(zoneId: String, originGroupId: String, originType: String, originGroupName: String, configurationType: String, originRecords: [OriginRecord], hostHeader: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOriginGroupResponse> {
        self.modifyOriginGroup(.init(zoneId: zoneId, originGroupId: originGroupId, originType: originType, originGroupName: originGroupName, configurationType: configurationType, originRecords: originRecords, hostHeader: hostHeader), region: region, logger: logger, on: eventLoop)
    }

    /// 修改源站组
    @inlinable @discardableResult
    public func modifyOriginGroup(zoneId: String, originGroupId: String, originType: String, originGroupName: String, configurationType: String, originRecords: [OriginRecord], hostHeader: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOriginGroupResponse {
        try await self.modifyOriginGroup(.init(zoneId: zoneId, originGroupId: originGroupId, originType: originType, originGroupName: originGroupName, configurationType: configurationType, originRecords: originRecords, hostHeader: hostHeader), region: region, logger: logger, on: eventLoop)
    }
}
