//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cfs {
    /// 文件系统快照概览
    ///
    /// 文件系统快照概览
    @inlinable
    public func describeCfsSnapshotOverview(_ input: DescribeCfsSnapshotOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCfsSnapshotOverviewResponse > {
        self.client.execute(action: "DescribeCfsSnapshotOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 文件系统快照概览
    ///
    /// 文件系统快照概览
    @inlinable
    public func describeCfsSnapshotOverview(_ input: DescribeCfsSnapshotOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsSnapshotOverviewResponse {
        try await self.client.execute(action: "DescribeCfsSnapshotOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCfsSnapshotOverview请求参数结构体
    public struct DescribeCfsSnapshotOverviewRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeCfsSnapshotOverview返回参数结构体
    public struct DescribeCfsSnapshotOverviewResponse: TCResponseModel {
        /// 统计信息
        public let statisticsList: [SnapshotStatistics]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case statisticsList = "StatisticsList"
            case requestId = "RequestId"
        }
    }
}