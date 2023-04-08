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

extension Tdid {
    /// DownCpt请求参数结构体
    public struct DownCptRequest: TCRequestModel {
        /// Cpt索引
        public let cptIndex: UInt64

        public init(cptIndex: UInt64) {
            self.cptIndex = cptIndex
        }

        enum CodingKeys: String, CodingKey {
            case cptIndex = "CptIndex"
        }
    }

    /// DownCpt返回参数结构体
    public struct DownCptResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 凭证模版下载
    @inlinable @discardableResult
    public func downCpt(_ input: DownCptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownCptResponse> {
        self.client.execute(action: "DownCpt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 凭证模版下载
    @inlinable @discardableResult
    public func downCpt(_ input: DownCptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownCptResponse {
        try await self.client.execute(action: "DownCpt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 凭证模版下载
    @inlinable @discardableResult
    public func downCpt(cptIndex: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownCptResponse> {
        self.downCpt(.init(cptIndex: cptIndex), region: region, logger: logger, on: eventLoop)
    }

    /// 凭证模版下载
    @inlinable @discardableResult
    public func downCpt(cptIndex: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownCptResponse {
        try await self.downCpt(.init(cptIndex: cptIndex), region: region, logger: logger, on: eventLoop)
    }
}
