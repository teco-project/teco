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
    /// CheckChain请求参数结构体
    public struct CheckChainRequest: TCRequestModel {
        /// 群组ID
        public let groupId: Int64

        /// 网络ID
        public let clusterId: String

        /// did服务机构名称
        public let agencyName: String

        public init(groupId: Int64, clusterId: String, agencyName: String) {
            self.groupId = groupId
            self.clusterId = clusterId
            self.agencyName = agencyName
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case clusterId = "ClusterId"
            case agencyName = "AgencyName"
        }
    }

    /// CheckChain返回参数结构体
    public struct CheckChainResponse: TCResponseModel {
        /// 1为盟主，0为非盟主
        public let roleType: Int64

        /// 链ID
        public let chainId: String

        /// 应用名称
        public let appName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleType = "RoleType"
            case chainId = "ChainId"
            case appName = "AppName"
            case requestId = "RequestId"
        }
    }

    /// 检查区块链信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func checkChain(_ input: CheckChainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckChainResponse> {
        fatalError("CheckChain is no longer available.")
    }

    /// 检查区块链信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func checkChain(_ input: CheckChainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckChainResponse {
        fatalError("CheckChain is no longer available.")
    }

    /// 检查区块链信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func checkChain(groupId: Int64, clusterId: String, agencyName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckChainResponse> {
        fatalError("CheckChain is no longer available.")
    }

    /// 检查区块链信息
    @available(*, unavailable, message: "该接口不再使用")
    @inlinable
    public func checkChain(groupId: Int64, clusterId: String, agencyName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckChainResponse {
        fatalError("CheckChain is no longer available.")
    }
}
