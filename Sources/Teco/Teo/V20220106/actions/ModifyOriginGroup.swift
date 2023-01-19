//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Teo {
    /// ModifyOriginGroup请求参数结构体
    public struct ModifyOriginGroupRequest: TCRequestModel {
        /// 源站组ID
        public let originId: String

        /// 源站组名称
        public let originName: String

        /// 配置类型，当OriginType=self 时，需要填写：
        /// area: 按区域配置
        /// weight: 按权重配置
        /// 当OriginType=third_party/cos 时，不需要填写
        public let type: String

        /// 源站记录
        public let record: [OriginRecord]

        /// 站点ID
        public let zoneId: String

        /// 源站类型
        /// self：自有源站
        /// third_party：第三方源站
        /// cos：腾讯云COS源站
        public let originType: String?

        public init(originId: String, originName: String, type: String, record: [OriginRecord], zoneId: String, originType: String? = nil) {
            self.originId = originId
            self.originName = originName
            self.type = type
            self.record = record
            self.zoneId = zoneId
            self.originType = originType
        }

        enum CodingKeys: String, CodingKey {
            case originId = "OriginId"
            case originName = "OriginName"
            case type = "Type"
            case record = "Record"
            case zoneId = "ZoneId"
            case originType = "OriginType"
        }
    }

    /// ModifyOriginGroup返回参数结构体
    public struct ModifyOriginGroupResponse: TCResponseModel {
        /// 源站组ID
        public let originId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originId = "OriginId"
            case requestId = "RequestId"
        }
    }

    /// 源站组修改
    @inlinable
    public func modifyOriginGroup(_ input: ModifyOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOriginGroupResponse> {
        self.client.execute(action: "ModifyOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 源站组修改
    @inlinable
    public func modifyOriginGroup(_ input: ModifyOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOriginGroupResponse {
        try await self.client.execute(action: "ModifyOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 源站组修改
    @inlinable
    public func modifyOriginGroup(originId: String, originName: String, type: String, record: [OriginRecord], zoneId: String, originType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOriginGroupResponse> {
        self.modifyOriginGroup(ModifyOriginGroupRequest(originId: originId, originName: originName, type: type, record: record, zoneId: zoneId, originType: originType), region: region, logger: logger, on: eventLoop)
    }

    /// 源站组修改
    @inlinable
    public func modifyOriginGroup(originId: String, originName: String, type: String, record: [OriginRecord], zoneId: String, originType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOriginGroupResponse {
        try await self.modifyOriginGroup(ModifyOriginGroupRequest(originId: originId, originName: originName, type: type, record: record, zoneId: zoneId, originType: originType), region: region, logger: logger, on: eventLoop)
    }
}
