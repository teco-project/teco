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

extension Cvm {
    /// DescribeChcDeniedActions请求参数结构体
    public struct DescribeChcDeniedActionsRequest: TCRequestModel {
        /// CHC物理服务器实例id
        public let chcIds: [String]

        public init(chcIds: [String]) {
            self.chcIds = chcIds
        }

        enum CodingKeys: String, CodingKey {
            case chcIds = "ChcIds"
        }
    }

    /// DescribeChcDeniedActions返回参数结构体
    public struct DescribeChcDeniedActionsResponse: TCResponseModel {
        /// CHC实例禁止操作信息
        public let chcHostDeniedActionSet: [ChcHostDeniedActions]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case chcHostDeniedActionSet = "ChcHostDeniedActionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询CHC物理服务器禁止做的操作
    ///
    /// 查询CHC物理服务器禁止做的操作，返回给用户
    @inlinable
    public func describeChcDeniedActions(_ input: DescribeChcDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChcDeniedActionsResponse> {
        self.client.execute(action: "DescribeChcDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CHC物理服务器禁止做的操作
    ///
    /// 查询CHC物理服务器禁止做的操作，返回给用户
    @inlinable
    public func describeChcDeniedActions(_ input: DescribeChcDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChcDeniedActionsResponse {
        try await self.client.execute(action: "DescribeChcDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CHC物理服务器禁止做的操作
    ///
    /// 查询CHC物理服务器禁止做的操作，返回给用户
    @inlinable
    public func describeChcDeniedActions(chcIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChcDeniedActionsResponse> {
        self.describeChcDeniedActions(DescribeChcDeniedActionsRequest(chcIds: chcIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CHC物理服务器禁止做的操作
    ///
    /// 查询CHC物理服务器禁止做的操作，返回给用户
    @inlinable
    public func describeChcDeniedActions(chcIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChcDeniedActionsResponse {
        try await self.describeChcDeniedActions(DescribeChcDeniedActionsRequest(chcIds: chcIds), region: region, logger: logger, on: eventLoop)
    }
}
