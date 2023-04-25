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

extension Mmps {
    /// DescribeFlySecMiniAppScanTaskParam请求参数结构体
    public struct DescribeFlySecMiniAppScanTaskParamRequest: TCRequestModel {
        /// 任务id
        public let taskID: String

        public init(taskID: String) {
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
        }
    }

    /// DescribeFlySecMiniAppScanTaskParam返回参数结构体
    public struct DescribeFlySecMiniAppScanTaskParamResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64

        /// 小程序AppID
        public let miniAppID: String

        /// 诊断模式 1:基础诊断，2:深度诊断
        public let mode: Int64

        /// 小程序测试账号(自有账号体系需提供,其他情况不需要)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let miniAppTestAccount: String?

        /// 小程序测试密码(自有账号体系需提供,其他情况不需要)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let miniAppTestPwd: String?

        /// 诊断扫描版本 0:正式版 1:体验版
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVersion: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case miniAppID = "MiniAppID"
            case mode = "Mode"
            case miniAppTestAccount = "MiniAppTestAccount"
            case miniAppTestPwd = "MiniAppTestPwd"
            case scanVersion = "ScanVersion"
            case requestId = "RequestId"
        }
    }

    /// 获取诊断任务参数信息
    ///
    /// 获取用户提交的基础诊断任务参数信息
    @inlinable
    public func describeFlySecMiniAppScanTaskParam(_ input: DescribeFlySecMiniAppScanTaskParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlySecMiniAppScanTaskParamResponse> {
        self.client.execute(action: "DescribeFlySecMiniAppScanTaskParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取诊断任务参数信息
    ///
    /// 获取用户提交的基础诊断任务参数信息
    @inlinable
    public func describeFlySecMiniAppScanTaskParam(_ input: DescribeFlySecMiniAppScanTaskParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanTaskParamResponse {
        try await self.client.execute(action: "DescribeFlySecMiniAppScanTaskParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取诊断任务参数信息
    ///
    /// 获取用户提交的基础诊断任务参数信息
    @inlinable
    public func describeFlySecMiniAppScanTaskParam(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlySecMiniAppScanTaskParamResponse> {
        self.describeFlySecMiniAppScanTaskParam(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }

    /// 获取诊断任务参数信息
    ///
    /// 获取用户提交的基础诊断任务参数信息
    @inlinable
    public func describeFlySecMiniAppScanTaskParam(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanTaskParamResponse {
        try await self.describeFlySecMiniAppScanTaskParam(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }
}
