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

extension Trp {
    /// ModifyTraceCode请求参数结构体
    public struct ModifyTraceCodeRequest: TCRequestModel {
        /// 二维码
        public let code: String

        /// 企业ID
        public let corpId: UInt64?

        /// 状态 0: 冻结 1: 激活
        public let status: UInt64?

        public init(code: String, corpId: UInt64? = nil, status: UInt64? = nil) {
            self.code = code
            self.corpId = corpId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case corpId = "CorpId"
            case status = "Status"
        }
    }

    /// ModifyTraceCode返回参数结构体
    public struct ModifyTraceCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改二维码的状态
    ///
    /// 冻结或者激活二维码，所属的批次的冻结状态优先级大于单个二维码的状态，即如果批次是冻结的，那么该批次下二维码的状态都是冻结的
    @inlinable @discardableResult
    public func modifyTraceCode(_ input: ModifyTraceCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTraceCodeResponse> {
        self.client.execute(action: "ModifyTraceCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改二维码的状态
    ///
    /// 冻结或者激活二维码，所属的批次的冻结状态优先级大于单个二维码的状态，即如果批次是冻结的，那么该批次下二维码的状态都是冻结的
    @inlinable @discardableResult
    public func modifyTraceCode(_ input: ModifyTraceCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTraceCodeResponse {
        try await self.client.execute(action: "ModifyTraceCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改二维码的状态
    ///
    /// 冻结或者激活二维码，所属的批次的冻结状态优先级大于单个二维码的状态，即如果批次是冻结的，那么该批次下二维码的状态都是冻结的
    @inlinable @discardableResult
    public func modifyTraceCode(code: String, corpId: UInt64? = nil, status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTraceCodeResponse> {
        self.modifyTraceCode(.init(code: code, corpId: corpId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改二维码的状态
    ///
    /// 冻结或者激活二维码，所属的批次的冻结状态优先级大于单个二维码的状态，即如果批次是冻结的，那么该批次下二维码的状态都是冻结的
    @inlinable @discardableResult
    public func modifyTraceCode(code: String, corpId: UInt64? = nil, status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTraceCodeResponse {
        try await self.modifyTraceCode(.init(code: code, corpId: corpId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
