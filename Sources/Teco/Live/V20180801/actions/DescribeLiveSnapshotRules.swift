//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Live {
    /// DescribeLiveSnapshotRules请求参数结构体
    public struct DescribeLiveSnapshotRulesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLiveSnapshotRules返回参数结构体
    public struct DescribeLiveSnapshotRulesResponse: TCResponseModel {
        /// 规则列表。
        public let rules: [RuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case requestId = "RequestId"
        }
    }

    /// 获取截图规则列表
    @inlinable
    public func describeLiveSnapshotRules(_ input: DescribeLiveSnapshotRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveSnapshotRulesResponse > {
        self.client.execute(action: "DescribeLiveSnapshotRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取截图规则列表
    @inlinable
    public func describeLiveSnapshotRules(_ input: DescribeLiveSnapshotRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveSnapshotRulesResponse {
        try await self.client.execute(action: "DescribeLiveSnapshotRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取截图规则列表
    @inlinable
    public func describeLiveSnapshotRules(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveSnapshotRulesResponse > {
        self.describeLiveSnapshotRules(DescribeLiveSnapshotRulesRequest(), logger: logger, on: eventLoop)
    }

    /// 获取截图规则列表
    @inlinable
    public func describeLiveSnapshotRules(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveSnapshotRulesResponse {
        try await self.describeLiveSnapshotRules(DescribeLiveSnapshotRulesRequest(), logger: logger, on: eventLoop)
    }
}
