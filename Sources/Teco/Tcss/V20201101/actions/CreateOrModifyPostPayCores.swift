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

extension Tcss {
    /// CreateOrModifyPostPayCores请求参数结构体
    public struct CreateOrModifyPostPayCoresRequest: TCRequestModel {
        /// 弹性计费上限，最小值500
        public let coresCnt: UInt64

        public init(coresCnt: UInt64) {
            self.coresCnt = coresCnt
        }

        enum CodingKeys: String, CodingKey {
            case coresCnt = "CoresCnt"
        }
    }

    /// CreateOrModifyPostPayCores返回参数结构体
    public struct CreateOrModifyPostPayCoresResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建或者编辑弹性计费上限
    ///
    /// CreateOrModifyPostPayCores  创建或者编辑弹性计费上限
    @inlinable @discardableResult
    public func createOrModifyPostPayCores(_ input: CreateOrModifyPostPayCoresRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrModifyPostPayCoresResponse> {
        self.client.execute(action: "CreateOrModifyPostPayCores", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建或者编辑弹性计费上限
    ///
    /// CreateOrModifyPostPayCores  创建或者编辑弹性计费上限
    @inlinable @discardableResult
    public func createOrModifyPostPayCores(_ input: CreateOrModifyPostPayCoresRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrModifyPostPayCoresResponse {
        try await self.client.execute(action: "CreateOrModifyPostPayCores", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建或者编辑弹性计费上限
    ///
    /// CreateOrModifyPostPayCores  创建或者编辑弹性计费上限
    @inlinable @discardableResult
    public func createOrModifyPostPayCores(coresCnt: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrModifyPostPayCoresResponse> {
        let input = CreateOrModifyPostPayCoresRequest(coresCnt: coresCnt)
        return self.client.execute(action: "CreateOrModifyPostPayCores", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建或者编辑弹性计费上限
    ///
    /// CreateOrModifyPostPayCores  创建或者编辑弹性计费上限
    @inlinable @discardableResult
    public func createOrModifyPostPayCores(coresCnt: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrModifyPostPayCoresResponse {
        let input = CreateOrModifyPostPayCoresRequest(coresCnt: coresCnt)
        return try await self.client.execute(action: "CreateOrModifyPostPayCores", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
