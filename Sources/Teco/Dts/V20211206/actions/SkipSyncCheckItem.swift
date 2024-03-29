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

extension Dts {
    /// SkipSyncCheckItem请求参数结构体
    public struct SkipSyncCheckItemRequest: TCRequest {
        /// 任务id，如：sync-4ddgid2
        public let jobId: String

        /// 需要跳过校验项的步骤id，需要通过`DescribeCheckSyncJobResult`接口返回StepInfos[i].StepId字段获取，例如：["OptimizeCheck"]
        public let stepIds: [String]

        public init(jobId: String, stepIds: [String]) {
            self.jobId = jobId
            self.stepIds = stepIds
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case stepIds = "StepIds"
        }
    }

    /// SkipSyncCheckItem返回参数结构体
    public struct SkipSyncCheckItemResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 跳过同步校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable @discardableResult
    public func skipSyncCheckItem(_ input: SkipSyncCheckItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SkipSyncCheckItemResponse> {
        self.client.execute(action: "SkipSyncCheckItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跳过同步校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable @discardableResult
    public func skipSyncCheckItem(_ input: SkipSyncCheckItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SkipSyncCheckItemResponse {
        try await self.client.execute(action: "SkipSyncCheckItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跳过同步校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable @discardableResult
    public func skipSyncCheckItem(jobId: String, stepIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SkipSyncCheckItemResponse> {
        self.skipSyncCheckItem(.init(jobId: jobId, stepIds: stepIds), region: region, logger: logger, on: eventLoop)
    }

    /// 跳过同步校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable @discardableResult
    public func skipSyncCheckItem(jobId: String, stepIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SkipSyncCheckItemResponse {
        try await self.skipSyncCheckItem(.init(jobId: jobId, stepIds: stepIds), region: region, logger: logger, on: eventLoop)
    }
}
