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

extension Tcss {
    /// DescribeAssetImageRegistryRegistryList请求参数结构体
    public struct DescribeAssetImageRegistryRegistryListRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAssetImageRegistryRegistryList返回参数结构体
    public struct DescribeAssetImageRegistryRegistryListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库仓库列表
    @inlinable @discardableResult
    public func describeAssetImageRegistryRegistryList(_ input: DescribeAssetImageRegistryRegistryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryRegistryListResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryRegistryList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库仓库列表
    @inlinable @discardableResult
    public func describeAssetImageRegistryRegistryList(_ input: DescribeAssetImageRegistryRegistryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryRegistryListResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryRegistryList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库仓库列表
    @inlinable @discardableResult
    public func describeAssetImageRegistryRegistryList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryRegistryListResponse> {
        self.describeAssetImageRegistryRegistryList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库仓库列表
    @inlinable @discardableResult
    public func describeAssetImageRegistryRegistryList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryRegistryListResponse {
        try await self.describeAssetImageRegistryRegistryList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
