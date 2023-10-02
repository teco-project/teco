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

extension Dsgc {
    /// DescribeDSPACOSDiscoveryTaskFiles请求参数结构体
    public struct DescribeDSPACOSDiscoveryTaskFilesRequest: TCRequest {
        /// DSPA实例Id
        public let dspaId: String

        /// 扫描任务ID
        public let taskId: Int64

        /// 扫描Bucket任务结果ID
        public let bucketResultId: Int64

        public init(dspaId: String, taskId: Int64, bucketResultId: Int64) {
            self.dspaId = dspaId
            self.taskId = taskId
            self.bucketResultId = bucketResultId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case taskId = "TaskId"
            case bucketResultId = "BucketResultId"
        }
    }

    /// DescribeDSPACOSDiscoveryTaskFiles返回参数结构体
    public struct DescribeDSPACOSDiscoveryTaskFilesResponse: TCResponse {
        /// 文件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let files: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case files = "Files"
            case requestId = "RequestId"
        }
    }

    /// 获取COS分类分级发现任务结果详情文件列表
    ///
    /// 获取COS分类分级任务结果详情文件列表
    @inlinable
    public func describeDSPACOSDiscoveryTaskFiles(_ input: DescribeDSPACOSDiscoveryTaskFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACOSDiscoveryTaskFilesResponse> {
        self.client.execute(action: "DescribeDSPACOSDiscoveryTaskFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级发现任务结果详情文件列表
    ///
    /// 获取COS分类分级任务结果详情文件列表
    @inlinable
    public func describeDSPACOSDiscoveryTaskFiles(_ input: DescribeDSPACOSDiscoveryTaskFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACOSDiscoveryTaskFilesResponse {
        try await self.client.execute(action: "DescribeDSPACOSDiscoveryTaskFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取COS分类分级发现任务结果详情文件列表
    ///
    /// 获取COS分类分级任务结果详情文件列表
    @inlinable
    public func describeDSPACOSDiscoveryTaskFiles(dspaId: String, taskId: Int64, bucketResultId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACOSDiscoveryTaskFilesResponse> {
        self.describeDSPACOSDiscoveryTaskFiles(.init(dspaId: dspaId, taskId: taskId, bucketResultId: bucketResultId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级发现任务结果详情文件列表
    ///
    /// 获取COS分类分级任务结果详情文件列表
    @inlinable
    public func describeDSPACOSDiscoveryTaskFiles(dspaId: String, taskId: Int64, bucketResultId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACOSDiscoveryTaskFilesResponse {
        try await self.describeDSPACOSDiscoveryTaskFiles(.init(dspaId: dspaId, taskId: taskId, bucketResultId: bucketResultId), region: region, logger: logger, on: eventLoop)
    }
}
