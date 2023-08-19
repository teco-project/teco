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

extension Mmps {
    /// DescribeFlySecMiniAppScanTaskStatus请求参数结构体
    public struct DescribeFlySecMiniAppScanTaskStatusRequest: TCRequest {
        /// 任务id
        public let taskID: String

        public init(taskID: String) {
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
        }
    }

    /// DescribeFlySecMiniAppScanTaskStatus返回参数结构体
    public struct DescribeFlySecMiniAppScanTaskStatusResponse: TCResponse {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64

        /// 诊断状态, 0:排队中, 1:成功, 2:失败, 3:进行中
        public let status: Int64

        /// 诊断失败错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errno: Int64?

        /// 小程序名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let miniAppName: String?

        /// 小程序版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let miniAppVersion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case status = "Status"
            case errno = "Errno"
            case miniAppName = "MiniAppName"
            case miniAppVersion = "MiniAppVersion"
            case requestId = "RequestId"
        }
    }

    /// 查询诊断任务状态
    ///
    /// 查询翼扬安全诊断任务状态
    @inlinable
    public func describeFlySecMiniAppScanTaskStatus(_ input: DescribeFlySecMiniAppScanTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlySecMiniAppScanTaskStatusResponse> {
        self.client.execute(action: "DescribeFlySecMiniAppScanTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询诊断任务状态
    ///
    /// 查询翼扬安全诊断任务状态
    @inlinable
    public func describeFlySecMiniAppScanTaskStatus(_ input: DescribeFlySecMiniAppScanTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanTaskStatusResponse {
        try await self.client.execute(action: "DescribeFlySecMiniAppScanTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询诊断任务状态
    ///
    /// 查询翼扬安全诊断任务状态
    @inlinable
    public func describeFlySecMiniAppScanTaskStatus(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlySecMiniAppScanTaskStatusResponse> {
        self.describeFlySecMiniAppScanTaskStatus(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询诊断任务状态
    ///
    /// 查询翼扬安全诊断任务状态
    @inlinable
    public func describeFlySecMiniAppScanTaskStatus(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanTaskStatusResponse {
        try await self.describeFlySecMiniAppScanTaskStatus(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }
}
