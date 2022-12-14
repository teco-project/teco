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

extension Tcss {
    /// DescribeValueAddedSrvInfo请求参数结构体
    public struct DescribeValueAddedSrvInfoRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeValueAddedSrvInfo返回参数结构体
    public struct DescribeValueAddedSrvInfoResponse: TCResponseModel {
        /// 仓库镜像未授权数量
        public let registryImageCnt: UInt64

        /// 本地镜像未授权数量
        public let localImageCnt: UInt64

        /// 未使用的镜像安全扫描授权数
        public let unusedAuthorizedCnt: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryImageCnt = "RegistryImageCnt"
            case localImageCnt = "LocalImageCnt"
            case unusedAuthorizedCnt = "UnusedAuthorizedCnt"
            case requestId = "RequestId"
        }
    }

    /// 查询增值服务需购买信息
    ///
    /// DescribeValueAddedSrvInfo查询增值服务需购买信息
    @inlinable
    public func describeValueAddedSrvInfo(_ input: DescribeValueAddedSrvInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeValueAddedSrvInfoResponse > {
        self.client.execute(action: "DescribeValueAddedSrvInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询增值服务需购买信息
    ///
    /// DescribeValueAddedSrvInfo查询增值服务需购买信息
    @inlinable
    public func describeValueAddedSrvInfo(_ input: DescribeValueAddedSrvInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeValueAddedSrvInfoResponse {
        try await self.client.execute(action: "DescribeValueAddedSrvInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询增值服务需购买信息
    ///
    /// DescribeValueAddedSrvInfo查询增值服务需购买信息
    @inlinable
    public func describeValueAddedSrvInfo(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeValueAddedSrvInfoResponse > {
        self.describeValueAddedSrvInfo(DescribeValueAddedSrvInfoRequest(), logger: logger, on: eventLoop)
    }

    /// 查询增值服务需购买信息
    ///
    /// DescribeValueAddedSrvInfo查询增值服务需购买信息
    @inlinable
    public func describeValueAddedSrvInfo(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeValueAddedSrvInfoResponse {
        try await self.describeValueAddedSrvInfo(DescribeValueAddedSrvInfoRequest(), logger: logger, on: eventLoop)
    }
}
