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

extension Yunjing {
    /// DescribeAlarmAttribute请求参数结构体
    public struct DescribeAlarmAttributeRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAlarmAttribute返回参数结构体
    public struct DescribeAlarmAttributeResponse: TCResponseModel {
        /// 防护软件离线告警状态：
        /// <li>OPEN：告警已开启</li>
        /// <li>CLOSE： 告警已关闭</li>
        public let offline: String

        /// 发现木马告警状态：
        /// <li>OPEN：告警已开启</li>
        /// <li>CLOSE： 告警已关闭</li>
        public let malware: String

        /// 发现异地登录告警状态：
        /// <li>OPEN：告警已开启</li>
        /// <li>CLOSE： 告警已关闭</li>
        public let nonlocalLogin: String

        /// 被暴力破解成功告警状态：
        /// <li>OPEN：告警已开启</li>
        /// <li>CLOSE： 告警已关闭</li>
        public let crackSuccess: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case offline = "Offline"
            case malware = "Malware"
            case nonlocalLogin = "NonlocalLogin"
            case crackSuccess = "CrackSuccess"
            case requestId = "RequestId"
        }
    }

    /// 获取告警设置
    ///
    /// 本接口 (DescribeAlarmAttribute) 用于获取告警设置。
    @inlinable
    public func describeAlarmAttribute(_ input: DescribeAlarmAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmAttributeResponse> {
        self.client.execute(action: "DescribeAlarmAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警设置
    ///
    /// 本接口 (DescribeAlarmAttribute) 用于获取告警设置。
    @inlinable
    public func describeAlarmAttribute(_ input: DescribeAlarmAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmAttributeResponse {
        try await self.client.execute(action: "DescribeAlarmAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警设置
    ///
    /// 本接口 (DescribeAlarmAttribute) 用于获取告警设置。
    @inlinable
    public func describeAlarmAttribute(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmAttributeResponse> {
        self.describeAlarmAttribute(DescribeAlarmAttributeRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警设置
    ///
    /// 本接口 (DescribeAlarmAttribute) 用于获取告警设置。
    @inlinable
    public func describeAlarmAttribute(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmAttributeResponse {
        try await self.describeAlarmAttribute(DescribeAlarmAttributeRequest(), region: region, logger: logger, on: eventLoop)
    }
}
