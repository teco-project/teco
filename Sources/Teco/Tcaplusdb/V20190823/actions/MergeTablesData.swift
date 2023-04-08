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

extension Tcaplusdb {
    /// MergeTablesData请求参数结构体
    public struct MergeTablesDataRequest: TCRequestModel {
        /// 选取的表格
        public let selectedTables: [MergeTablesInfo]

        /// true只做对比，false既对比又执行
        public let isOnlyCompare: Bool

        public init(selectedTables: [MergeTablesInfo], isOnlyCompare: Bool) {
            self.selectedTables = selectedTables
            self.isOnlyCompare = isOnlyCompare
        }

        enum CodingKeys: String, CodingKey {
            case selectedTables = "SelectedTables"
            case isOnlyCompare = "IsOnlyCompare"
        }
    }

    /// MergeTablesData返回参数结构体
    public struct MergeTablesDataResponse: TCResponseModel {
        /// 合服结果集
        public let results: [MergeTableResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 合服
    ///
    /// 合并指定表格
    @inlinable
    public func mergeTablesData(_ input: MergeTablesDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MergeTablesDataResponse> {
        self.client.execute(action: "MergeTablesData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合服
    ///
    /// 合并指定表格
    @inlinable
    public func mergeTablesData(_ input: MergeTablesDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MergeTablesDataResponse {
        try await self.client.execute(action: "MergeTablesData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合服
    ///
    /// 合并指定表格
    @inlinable
    public func mergeTablesData(selectedTables: [MergeTablesInfo], isOnlyCompare: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MergeTablesDataResponse> {
        self.mergeTablesData(.init(selectedTables: selectedTables, isOnlyCompare: isOnlyCompare), region: region, logger: logger, on: eventLoop)
    }

    /// 合服
    ///
    /// 合并指定表格
    @inlinable
    public func mergeTablesData(selectedTables: [MergeTablesInfo], isOnlyCompare: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MergeTablesDataResponse {
        try await self.mergeTablesData(.init(selectedTables: selectedTables, isOnlyCompare: isOnlyCompare), region: region, logger: logger, on: eventLoop)
    }
}
