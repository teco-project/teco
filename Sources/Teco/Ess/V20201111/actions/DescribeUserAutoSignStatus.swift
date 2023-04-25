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

extension Ess {
    /// DescribeUserAutoSignStatus请求参数结构体
    public struct DescribeUserAutoSignStatusRequest: TCRequestModel {
        /// 操作人信息
        public let `operator`: UserInfo

        /// 自动签场景:
        /// E_PRESCRIPTION_AUTO_SIGN 电子处方
        public let sceneKey: String

        /// 查询开启状态的用户信息
        public let userInfo: UserThreeFactor

        public init(operator: UserInfo, sceneKey: String, userInfo: UserThreeFactor) {
            self.operator = `operator`
            self.sceneKey = sceneKey
            self.userInfo = userInfo
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case sceneKey = "SceneKey"
            case userInfo = "UserInfo"
        }
    }

    /// DescribeUserAutoSignStatus返回参数结构体
    public struct DescribeUserAutoSignStatusResponse: TCResponseModel {
        /// 是否开通
        public let isOpen: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isOpen = "IsOpen"
            case requestId = "RequestId"
        }
    }

    /// 查询个人用户开通自动签状态
    ///
    /// 企业方可以通过此接口查询个人用户自动签开启状态
    @inlinable
    public func describeUserAutoSignStatus(_ input: DescribeUserAutoSignStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserAutoSignStatusResponse> {
        self.client.execute(action: "DescribeUserAutoSignStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询个人用户开通自动签状态
    ///
    /// 企业方可以通过此接口查询个人用户自动签开启状态
    @inlinable
    public func describeUserAutoSignStatus(_ input: DescribeUserAutoSignStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserAutoSignStatusResponse {
        try await self.client.execute(action: "DescribeUserAutoSignStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询个人用户开通自动签状态
    ///
    /// 企业方可以通过此接口查询个人用户自动签开启状态
    @inlinable
    public func describeUserAutoSignStatus(operator: UserInfo, sceneKey: String, userInfo: UserThreeFactor, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserAutoSignStatusResponse> {
        self.describeUserAutoSignStatus(.init(operator: `operator`, sceneKey: sceneKey, userInfo: userInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 查询个人用户开通自动签状态
    ///
    /// 企业方可以通过此接口查询个人用户自动签开启状态
    @inlinable
    public func describeUserAutoSignStatus(operator: UserInfo, sceneKey: String, userInfo: UserThreeFactor, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserAutoSignStatusResponse {
        try await self.describeUserAutoSignStatus(.init(operator: `operator`, sceneKey: sceneKey, userInfo: userInfo), region: region, logger: logger, on: eventLoop)
    }
}
