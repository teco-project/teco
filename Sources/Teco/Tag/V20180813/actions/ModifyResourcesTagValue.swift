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

extension Tag {
    /// ModifyResourcesTagValue请求参数结构体
    public struct ModifyResourcesTagValueRequest: TCRequestModel {
        /// 资源所属业务名称（资源六段式中的第三段）
        public let serviceType: String

        /// 资源ID数组，资源个数最多为50
        public let resourceIds: [String]

        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        /// 资源所在地域，不区分地域的资源不需要传入该字段，区分地域的资源必填
        public let resourceRegion: String?

        /// 资源前缀（资源六段式中最后一段"/"前面的部分），cos存储桶不需要传入该字段，其他云资源必填
        public let resourcePrefix: String?

        public init(serviceType: String, resourceIds: [String], tagKey: String, tagValue: String, resourceRegion: String? = nil, resourcePrefix: String? = nil) {
            self.serviceType = serviceType
            self.resourceIds = resourceIds
            self.tagKey = tagKey
            self.tagValue = tagValue
            self.resourceRegion = resourceRegion
            self.resourcePrefix = resourcePrefix
        }

        enum CodingKeys: String, CodingKey {
            case serviceType = "ServiceType"
            case resourceIds = "ResourceIds"
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case resourceRegion = "ResourceRegion"
            case resourcePrefix = "ResourcePrefix"
        }
    }

    /// ModifyResourcesTagValue返回参数结构体
    public struct ModifyResourcesTagValueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改批量资源关联的标签值
    ///
    /// 修改多个资源关联的某个标签键对应的标签值
    @inlinable @discardableResult
    public func modifyResourcesTagValue(_ input: ModifyResourcesTagValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourcesTagValueResponse> {
        self.client.execute(action: "ModifyResourcesTagValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改批量资源关联的标签值
    ///
    /// 修改多个资源关联的某个标签键对应的标签值
    @inlinable @discardableResult
    public func modifyResourcesTagValue(_ input: ModifyResourcesTagValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourcesTagValueResponse {
        try await self.client.execute(action: "ModifyResourcesTagValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改批量资源关联的标签值
    ///
    /// 修改多个资源关联的某个标签键对应的标签值
    @inlinable @discardableResult
    public func modifyResourcesTagValue(serviceType: String, resourceIds: [String], tagKey: String, tagValue: String, resourceRegion: String? = nil, resourcePrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourcesTagValueResponse> {
        self.modifyResourcesTagValue(.init(serviceType: serviceType, resourceIds: resourceIds, tagKey: tagKey, tagValue: tagValue, resourceRegion: resourceRegion, resourcePrefix: resourcePrefix), region: region, logger: logger, on: eventLoop)
    }

    /// 修改批量资源关联的标签值
    ///
    /// 修改多个资源关联的某个标签键对应的标签值
    @inlinable @discardableResult
    public func modifyResourcesTagValue(serviceType: String, resourceIds: [String], tagKey: String, tagValue: String, resourceRegion: String? = nil, resourcePrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourcesTagValueResponse {
        try await self.modifyResourcesTagValue(.init(serviceType: serviceType, resourceIds: resourceIds, tagKey: tagKey, tagValue: tagValue, resourceRegion: resourceRegion, resourcePrefix: resourcePrefix), region: region, logger: logger, on: eventLoop)
    }
}
