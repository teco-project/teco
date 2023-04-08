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

extension Ms {
    /// CreateShieldInstance请求参数结构体
    public struct CreateShieldInstanceRequest: TCRequestModel {
        /// 待加固的应用信息
        public let appInfo: AppInfo

        /// 加固服务信息
        public let serviceInfo: ServiceInfo

        public init(appInfo: AppInfo, serviceInfo: ServiceInfo) {
            self.appInfo = appInfo
            self.serviceInfo = serviceInfo
        }

        enum CodingKeys: String, CodingKey {
            case appInfo = "AppInfo"
            case serviceInfo = "ServiceInfo"
        }
    }

    /// CreateShieldInstance返回参数结构体
    public struct CreateShieldInstanceResponse: TCResponseModel {
        /// 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        public let progress: UInt64

        /// 任务唯一标识
        public let itemId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case progress = "Progress"
            case itemId = "ItemId"
            case requestId = "RequestId"
        }
    }

    /// 提交加固基础数据
    ///
    /// 用户通过该接口提交应用进行应用加固，加固后需通过DescribeShieldResult接口查询加固结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createShieldInstance(_ input: CreateShieldInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateShieldInstanceResponse> {
        self.client.execute(action: "CreateShieldInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交加固基础数据
    ///
    /// 用户通过该接口提交应用进行应用加固，加固后需通过DescribeShieldResult接口查询加固结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createShieldInstance(_ input: CreateShieldInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateShieldInstanceResponse {
        try await self.client.execute(action: "CreateShieldInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交加固基础数据
    ///
    /// 用户通过该接口提交应用进行应用加固，加固后需通过DescribeShieldResult接口查询加固结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createShieldInstance(appInfo: AppInfo, serviceInfo: ServiceInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateShieldInstanceResponse> {
        self.createShieldInstance(.init(appInfo: appInfo, serviceInfo: serviceInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 提交加固基础数据
    ///
    /// 用户通过该接口提交应用进行应用加固，加固后需通过DescribeShieldResult接口查询加固结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createShieldInstance(appInfo: AppInfo, serviceInfo: ServiceInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateShieldInstanceResponse {
        try await self.createShieldInstance(.init(appInfo: appInfo, serviceInfo: serviceInfo), region: region, logger: logger, on: eventLoop)
    }
}
