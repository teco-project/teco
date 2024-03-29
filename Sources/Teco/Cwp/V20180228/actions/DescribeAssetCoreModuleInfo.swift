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

extension Cwp {
    /// DescribeAssetCoreModuleInfo请求参数结构体
    public struct DescribeAssetCoreModuleInfoRequest: TCRequest {
        /// 服务器Quuid
        public let quuid: String

        /// 服务器Uuid
        public let uuid: String

        /// 内核模块ID
        public let id: String

        public init(quuid: String, uuid: String, id: String) {
            self.quuid = quuid
            self.uuid = uuid
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
            case id = "Id"
        }
    }

    /// DescribeAssetCoreModuleInfo返回参数结构体
    public struct DescribeAssetCoreModuleInfoResponse: TCResponse {
        /// 内核模块详情
        public let module: AssetCoreModuleDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case requestId = "RequestId"
        }
    }

    /// 获取内核模块详情
    @inlinable
    public func describeAssetCoreModuleInfo(_ input: DescribeAssetCoreModuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetCoreModuleInfoResponse> {
        self.client.execute(action: "DescribeAssetCoreModuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取内核模块详情
    @inlinable
    public func describeAssetCoreModuleInfo(_ input: DescribeAssetCoreModuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetCoreModuleInfoResponse {
        try await self.client.execute(action: "DescribeAssetCoreModuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取内核模块详情
    @inlinable
    public func describeAssetCoreModuleInfo(quuid: String, uuid: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetCoreModuleInfoResponse> {
        self.describeAssetCoreModuleInfo(.init(quuid: quuid, uuid: uuid, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取内核模块详情
    @inlinable
    public func describeAssetCoreModuleInfo(quuid: String, uuid: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetCoreModuleInfoResponse {
        try await self.describeAssetCoreModuleInfo(.init(quuid: quuid, uuid: uuid, id: id), region: region, logger: logger, on: eventLoop)
    }
}
