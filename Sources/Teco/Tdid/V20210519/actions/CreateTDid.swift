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
    /// CreateTDid请求参数结构体
    public struct CreateTDidRequest: TCRequest {
        /// 群组ID
        public let groupId: UInt64

        /// 网络ID
        public let clusterId: String

        /// 部署机构为1，否则为0
        public let relegation: UInt64

        public init(groupId: UInt64, clusterId: String, relegation: UInt64) {
            self.groupId = groupId
            self.clusterId = clusterId
            self.relegation = relegation
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case clusterId = "ClusterId"
            case relegation = "Relegation"
        }
    }

    /// CreateTDid返回参数结构体
    public struct CreateTDidResponse: TCResponse {
        /// TDID
        public let did: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case did = "Did"
            case requestId = "RequestId"
        }
    }

    /// 创建机构DID
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func createTDid(_ input: CreateTDidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTDidResponse> {
        fatalError("'CreateTDid' is no longer available.")
    }

    /// 创建机构DID
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func createTDid(_ input: CreateTDidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTDidResponse {
        fatalError("'CreateTDid' is no longer available.")
    }

    /// 创建机构DID
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func createTDid(groupId: UInt64, clusterId: String, relegation: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTDidResponse> {
        fatalError("'CreateTDid' is no longer available.")
    }

    /// 创建机构DID
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func createTDid(groupId: UInt64, clusterId: String, relegation: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTDidResponse {
        fatalError("'CreateTDid' is no longer available.")
    }
}
