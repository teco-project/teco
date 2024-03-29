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

extension Wedata {
    /// DeleteDataSources请求参数结构体
    public struct DeleteDataSourcesRequest: TCRequest {
        /// id列表
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// DeleteDataSources返回参数结构体
    public struct DeleteDataSourcesResponse: TCResponse {
        /// 是否删除成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 数据源管理-删除数据源【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 删除数据源
    @inlinable
    public func deleteDataSources(_ input: DeleteDataSourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataSourcesResponse> {
        self.client.execute(action: "DeleteDataSources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据源管理-删除数据源【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 删除数据源
    @inlinable
    public func deleteDataSources(_ input: DeleteDataSourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataSourcesResponse {
        try await self.client.execute(action: "DeleteDataSources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据源管理-删除数据源【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 删除数据源
    @inlinable
    public func deleteDataSources(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataSourcesResponse> {
        self.deleteDataSources(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 数据源管理-删除数据源【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 删除数据源
    @inlinable
    public func deleteDataSources(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataSourcesResponse {
        try await self.deleteDataSources(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
