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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tag {
    /// UnTagResources请求参数结构体
    public struct UnTagResourcesRequest: TCRequestModel {
        /// 资源六段式列表。腾讯云使用资源六段式描述一个资源。可参考[访问管理](https://cloud.tencent.com/document/product/598/67350)-概览-接口列表-资源六段式信息
        /// 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:uin/${Account}:${ResourcePrefix}/${ResourceId}。
        /// N取值范围：0~9
        public let resourceList: [String]

        /// 标签键。
        /// 取值范围：0~9
        public let tagKeys: [String]

        public init(resourceList: [String], tagKeys: [String]) {
            self.resourceList = resourceList
            self.tagKeys = tagKeys
        }

        enum CodingKeys: String, CodingKey {
            case resourceList = "ResourceList"
            case tagKeys = "TagKeys"
        }
    }

    /// UnTagResources返回参数结构体
    public struct UnTagResourcesResponse: TCResponseModel {
        /// 失败资源信息。
        /// 解绑标签成功时，返回的FailedResources为空。
        /// 解绑标签失败或部分失败时，返回的FailedResources会显示失败资源的详细信息。
        public let failedResources: [FailedResource]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedResources = "FailedResources"
            case requestId = "RequestId"
        }
    }

    /// 为资源解绑标签
    ///
    /// 指定的多个云产品的多个云资源统一解绑标签。
    @inlinable
    public func unTagResources(_ input: UnTagResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnTagResourcesResponse> {
        self.client.execute(action: "UnTagResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 为资源解绑标签
    ///
    /// 指定的多个云产品的多个云资源统一解绑标签。
    @inlinable
    public func unTagResources(_ input: UnTagResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnTagResourcesResponse {
        try await self.client.execute(action: "UnTagResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 为资源解绑标签
    ///
    /// 指定的多个云产品的多个云资源统一解绑标签。
    @inlinable
    public func unTagResources(resourceList: [String], tagKeys: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnTagResourcesResponse> {
        self.unTagResources(.init(resourceList: resourceList, tagKeys: tagKeys), region: region, logger: logger, on: eventLoop)
    }

    /// 为资源解绑标签
    ///
    /// 指定的多个云产品的多个云资源统一解绑标签。
    @inlinable
    public func unTagResources(resourceList: [String], tagKeys: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnTagResourcesResponse {
        try await self.unTagResources(.init(resourceList: resourceList, tagKeys: tagKeys), region: region, logger: logger, on: eventLoop)
    }
}
