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

extension Ckafka {
    /// CheckCdcCluster请求参数结构体
    public struct CheckCdcClusterRequest: TCRequestModel {
        /// 任务ID
        public let taskId: Int64

        public init(taskId: Int64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// CheckCdcCluster返回参数结构体
    public struct CheckCdcClusterResponse: TCResponseModel {
        /// 返回结果状态Success
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询cdc任务接口
    ///
    /// 用于查询cdc-ckafka任务状态
    @inlinable
    public func checkCdcCluster(_ input: CheckCdcClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCdcClusterResponse> {
        self.client.execute(action: "CheckCdcCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询cdc任务接口
    ///
    /// 用于查询cdc-ckafka任务状态
    @inlinable
    public func checkCdcCluster(_ input: CheckCdcClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCdcClusterResponse {
        try await self.client.execute(action: "CheckCdcCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询cdc任务接口
    ///
    /// 用于查询cdc-ckafka任务状态
    @inlinable
    public func checkCdcCluster(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCdcClusterResponse> {
        let input = CheckCdcClusterRequest(taskId: taskId)
        return self.client.execute(action: "CheckCdcCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询cdc任务接口
    ///
    /// 用于查询cdc-ckafka任务状态
    @inlinable
    public func checkCdcCluster(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCdcClusterResponse {
        let input = CheckCdcClusterRequest(taskId: taskId)
        return try await self.client.execute(action: "CheckCdcCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
