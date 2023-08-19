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

extension Tag {
    /// TagResources请求参数结构体
    public struct TagResourcesRequest: TCRequest {
        /// 资源六段式列表。腾讯云使用资源六段式描述一个资源。可参考[访问管理](https://cloud.tencent.com/document/product/598/67350)-概览-接口列表-资源六段式信息
        /// 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:uin/${Account}:${ResourcePrefix}/${ResourceId}。
        /// N取值范围：0~9
        public let resourceList: [String]

        /// 标签键和标签值。
        /// 如果指定多个标签，则会为指定资源同时创建并绑定该多个标签。
        /// 同一个资源上的同一个标签键只能对应一个标签值。如果您尝试添加已有标签键，则对应的标签值会更新为新值。
        /// 如果标签不存在会为您自动创建标签。
        /// N取值范围：0~9
        public let tags: [Tag]

        public init(resourceList: [String], tags: [Tag]) {
            self.resourceList = resourceList
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case resourceList = "ResourceList"
            case tags = "Tags"
        }
    }

    /// TagResources返回参数结构体
    public struct TagResourcesResponse: TCResponse {
        /// 失败资源信息。
        /// 创建并绑定标签成功时，返回的FailedResources为空。
        /// 创建并绑定标签失败或部分失败时，返回的FailedResources会显示失败资源的详细信息。
        public let failedResources: [FailedResource]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedResources = "FailedResources"
            case requestId = "RequestId"
        }
    }

    /// 为资源绑定标签
    ///
    /// 为指定的多个云产品的多个云资源统一创建并绑定标签。
    @inlinable
    public func tagResources(_ input: TagResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourcesResponse> {
        self.client.execute(action: "TagResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 为资源绑定标签
    ///
    /// 为指定的多个云产品的多个云资源统一创建并绑定标签。
    @inlinable
    public func tagResources(_ input: TagResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourcesResponse {
        try await self.client.execute(action: "TagResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 为资源绑定标签
    ///
    /// 为指定的多个云产品的多个云资源统一创建并绑定标签。
    @inlinable
    public func tagResources(resourceList: [String], tags: [Tag], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourcesResponse> {
        self.tagResources(.init(resourceList: resourceList, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 为资源绑定标签
    ///
    /// 为指定的多个云产品的多个云资源统一创建并绑定标签。
    @inlinable
    public func tagResources(resourceList: [String], tags: [Tag], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourcesResponse {
        try await self.tagResources(.init(resourceList: resourceList, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
