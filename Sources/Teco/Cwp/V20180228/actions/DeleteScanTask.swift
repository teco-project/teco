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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cwp {
    /// DeleteScanTask请求参数结构体
    public struct DeleteScanTaskRequest: TCRequestModel {
        /// 任务Id
        public let taskId: UInt64

        /// 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        public let moduleType: String

        /// 自选服务器时生效，主机quuid的string数组
        public let quuidList: [String]?

        public init(taskId: UInt64, moduleType: String, quuidList: [String]? = nil) {
            self.taskId = taskId
            self.moduleType = moduleType
            self.quuidList = quuidList
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case moduleType = "ModuleType"
            case quuidList = "QuuidList"
        }
    }

    /// DeleteScanTask返回参数结构体
    public struct DeleteScanTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止扫描任务
    ///
    /// DeleteScanTask 该接口可以对指定类型的扫描任务进行停止扫描;
    @inlinable @discardableResult
    public func deleteScanTask(_ input: DeleteScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScanTaskResponse> {
        self.client.execute(action: "DeleteScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止扫描任务
    ///
    /// DeleteScanTask 该接口可以对指定类型的扫描任务进行停止扫描;
    @inlinable @discardableResult
    public func deleteScanTask(_ input: DeleteScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScanTaskResponse {
        try await self.client.execute(action: "DeleteScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止扫描任务
    ///
    /// DeleteScanTask 该接口可以对指定类型的扫描任务进行停止扫描;
    @inlinable @discardableResult
    public func deleteScanTask(taskId: UInt64, moduleType: String, quuidList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScanTaskResponse> {
        self.deleteScanTask(.init(taskId: taskId, moduleType: moduleType, quuidList: quuidList), region: region, logger: logger, on: eventLoop)
    }

    /// 停止扫描任务
    ///
    /// DeleteScanTask 该接口可以对指定类型的扫描任务进行停止扫描;
    @inlinable @discardableResult
    public func deleteScanTask(taskId: UInt64, moduleType: String, quuidList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScanTaskResponse {
        try await self.deleteScanTask(.init(taskId: taskId, moduleType: moduleType, quuidList: quuidList), region: region, logger: logger, on: eventLoop)
    }
}
