//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tag {
    /// AttachResourcesTag请求参数结构体
    public struct AttachResourcesTagRequest: TCRequestModel {
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

    /// AttachResourcesTag返回参数结构体
    public struct AttachResourcesTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 标签关联批量资源
    ///
    /// 给多个资源关联某个标签
    @inlinable
    public func attachResourcesTag(_ input: AttachResourcesTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AttachResourcesTagResponse > {
        self.client.execute(action: "AttachResourcesTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 标签关联批量资源
    ///
    /// 给多个资源关联某个标签
    @inlinable
    public func attachResourcesTag(_ input: AttachResourcesTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachResourcesTagResponse {
        try await self.client.execute(action: "AttachResourcesTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 标签关联批量资源
    ///
    /// 给多个资源关联某个标签
    @inlinable
    public func attachResourcesTag(serviceType: String, resourceIds: [String], tagKey: String, tagValue: String, resourceRegion: String? = nil, resourcePrefix: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AttachResourcesTagResponse > {
        self.attachResourcesTag(AttachResourcesTagRequest(serviceType: serviceType, resourceIds: resourceIds, tagKey: tagKey, tagValue: tagValue, resourceRegion: resourceRegion, resourcePrefix: resourcePrefix), logger: logger, on: eventLoop)
    }

    /// 标签关联批量资源
    ///
    /// 给多个资源关联某个标签
    @inlinable
    public func attachResourcesTag(serviceType: String, resourceIds: [String], tagKey: String, tagValue: String, resourceRegion: String? = nil, resourcePrefix: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachResourcesTagResponse {
        try await self.attachResourcesTag(AttachResourcesTagRequest(serviceType: serviceType, resourceIds: resourceIds, tagKey: tagKey, tagValue: tagValue, resourceRegion: resourceRegion, resourcePrefix: resourcePrefix), logger: logger, on: eventLoop)
    }
}
