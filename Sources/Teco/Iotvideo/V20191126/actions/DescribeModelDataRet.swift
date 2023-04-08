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

extension Iotvideo {
    /// DescribeModelDataRet请求参数结构体
    public struct DescribeModelDataRetRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeModelDataRet返回参数结构体
    public struct DescribeModelDataRetResponse: TCResponseModel {
        /// 设备响应结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取物模型操作结果
    ///
    /// 本接口（DescribeModelDataRet）用于根据TaskId获取对设备物模型操作最终响应的结果。
    @inlinable
    public func describeModelDataRet(_ input: DescribeModelDataRetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelDataRetResponse> {
        self.client.execute(action: "DescribeModelDataRet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取物模型操作结果
    ///
    /// 本接口（DescribeModelDataRet）用于根据TaskId获取对设备物模型操作最终响应的结果。
    @inlinable
    public func describeModelDataRet(_ input: DescribeModelDataRetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelDataRetResponse {
        try await self.client.execute(action: "DescribeModelDataRet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取物模型操作结果
    ///
    /// 本接口（DescribeModelDataRet）用于根据TaskId获取对设备物模型操作最终响应的结果。
    @inlinable
    public func describeModelDataRet(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelDataRetResponse> {
        self.describeModelDataRet(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取物模型操作结果
    ///
    /// 本接口（DescribeModelDataRet）用于根据TaskId获取对设备物模型操作最终响应的结果。
    @inlinable
    public func describeModelDataRet(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelDataRetResponse {
        try await self.describeModelDataRet(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
