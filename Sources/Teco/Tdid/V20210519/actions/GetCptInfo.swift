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

extension Tdid {
    /// GetCptInfo请求参数结构体
    public struct GetCptInfoRequest: TCRequestModel {
        /// Cpt索引
        public let cptIndex: UInt64

        public init(cptIndex: UInt64) {
            self.cptIndex = cptIndex
        }

        enum CodingKeys: String, CodingKey {
            case cptIndex = "CptIndex"
        }
    }

    /// GetCptInfo返回参数结构体
    public struct GetCptInfoResponse: TCResponseModel {
        /// CptJsonData的具体信息
        public let cptJsonData: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cptJsonData = "CptJsonData"
            case requestId = "RequestId"
        }
    }

    /// 凭证模版详情
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCptInfo(_ input: GetCptInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCptInfoResponse> {
        fatalError("GetCptInfo is no longer available.")
    }

    /// 凭证模版详情
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCptInfo(_ input: GetCptInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCptInfoResponse {
        fatalError("GetCptInfo is no longer available.")
    }

    /// 凭证模版详情
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCptInfo(cptIndex: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCptInfoResponse> {
        fatalError("GetCptInfo is no longer available.")
    }

    /// 凭证模版详情
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func getCptInfo(cptIndex: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCptInfoResponse {
        fatalError("GetCptInfo is no longer available.")
    }
}
