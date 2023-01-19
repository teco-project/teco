//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cr {
    /// ApplyBlackListData请求参数结构体
    public struct ApplyBlackListDataRequest: TCRequestModel {
        /// 模块名，AiApi
        public let module: String

        /// 操作名，ApplyBlackListData
        public let operation: String

        /// 黑名单列表
        public let blackList: [BlackListData]

        public init(module: String, operation: String, blackList: [BlackListData]) {
            self.module = module
            self.operation = operation
            self.blackList = blackList
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case blackList = "BlackList"
        }
    }

    /// ApplyBlackListData返回参数结构体
    public struct ApplyBlackListDataResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 提交机器人黑名单申请
    @inlinable
    public func applyBlackListData(_ input: ApplyBlackListDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyBlackListDataResponse> {
        self.client.execute(action: "ApplyBlackListData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交机器人黑名单申请
    @inlinable
    public func applyBlackListData(_ input: ApplyBlackListDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyBlackListDataResponse {
        try await self.client.execute(action: "ApplyBlackListData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交机器人黑名单申请
    @inlinable
    public func applyBlackListData(module: String, operation: String, blackList: [BlackListData], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyBlackListDataResponse> {
        self.applyBlackListData(ApplyBlackListDataRequest(module: module, operation: operation, blackList: blackList), region: region, logger: logger, on: eventLoop)
    }

    /// 提交机器人黑名单申请
    @inlinable
    public func applyBlackListData(module: String, operation: String, blackList: [BlackListData], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyBlackListDataResponse {
        try await self.applyBlackListData(ApplyBlackListDataRequest(module: module, operation: operation, blackList: blackList), region: region, logger: logger, on: eventLoop)
    }
}
