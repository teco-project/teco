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

extension Scf {
    /// ListLayerVersions请求参数结构体
    public struct ListLayerVersionsRequest: TCRequestModel {
        /// 层名称
        public let layerName: String

        /// 适配的运行时
        public let compatibleRuntime: [String]?

        public init(layerName: String, compatibleRuntime: [String]? = nil) {
            self.layerName = layerName
            self.compatibleRuntime = compatibleRuntime
        }

        enum CodingKeys: String, CodingKey {
            case layerName = "LayerName"
            case compatibleRuntime = "CompatibleRuntime"
        }
    }

    /// ListLayerVersions返回参数结构体
    public struct ListLayerVersionsResponse: TCResponseModel {
        /// 层版本列表
        public let layerVersions: [LayerVersionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case layerVersions = "LayerVersions"
            case requestId = "RequestId"
        }
    }

    /// 获取层版本列表
    ///
    /// 返回指定层的全部版本的信息
    @inlinable
    public func listLayerVersions(_ input: ListLayerVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLayerVersionsResponse> {
        self.client.execute(action: "ListLayerVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取层版本列表
    ///
    /// 返回指定层的全部版本的信息
    @inlinable
    public func listLayerVersions(_ input: ListLayerVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLayerVersionsResponse {
        try await self.client.execute(action: "ListLayerVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取层版本列表
    ///
    /// 返回指定层的全部版本的信息
    @inlinable
    public func listLayerVersions(layerName: String, compatibleRuntime: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLayerVersionsResponse> {
        self.listLayerVersions(.init(layerName: layerName, compatibleRuntime: compatibleRuntime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取层版本列表
    ///
    /// 返回指定层的全部版本的信息
    @inlinable
    public func listLayerVersions(layerName: String, compatibleRuntime: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLayerVersionsResponse {
        try await self.listLayerVersions(.init(layerName: layerName, compatibleRuntime: compatibleRuntime), region: region, logger: logger, on: eventLoop)
    }
}
