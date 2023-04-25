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

extension Tdid {
    /// GetAgencyTDid请求参数结构体
    public struct GetAgencyTDidRequest: TCRequestModel {
        /// 网络ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// GetAgencyTDid返回参数结构体
    public struct GetAgencyTDidResponse: TCResponseModel {
        /// 固定前缀
        public let prefix: String

        /// did详情
        public let identity: [Identity]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case prefix = "Prefix"
            case identity = "Identity"
            case requestId = "RequestId"
        }
    }

    /// 本机构DID详情
    @available(*, unavailable, message: "该接口已废弃")
    @inlinable
    public func getAgencyTDid(_ input: GetAgencyTDidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAgencyTDidResponse> {
        fatalError("GetAgencyTDid is no longer available.")
    }

    /// 本机构DID详情
    @available(*, unavailable, message: "该接口已废弃")
    @inlinable
    public func getAgencyTDid(_ input: GetAgencyTDidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAgencyTDidResponse {
        fatalError("GetAgencyTDid is no longer available.")
    }

    /// 本机构DID详情
    @available(*, unavailable, message: "该接口已废弃")
    @inlinable
    public func getAgencyTDid(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAgencyTDidResponse> {
        fatalError("GetAgencyTDid is no longer available.")
    }

    /// 本机构DID详情
    @available(*, unavailable, message: "该接口已废弃")
    @inlinable
    public func getAgencyTDid(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAgencyTDidResponse {
        fatalError("GetAgencyTDid is no longer available.")
    }
}
