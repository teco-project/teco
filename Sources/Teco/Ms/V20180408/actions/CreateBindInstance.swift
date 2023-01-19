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

extension Ms {
    /// CreateBindInstance请求参数结构体
    public struct CreateBindInstanceRequest: TCRequestModel {
        /// 资源id，全局唯一
        public let resourceId: String

        /// app的icon的url
        public let appIconUrl: String

        /// app的名称
        public let appName: String

        /// app的包名
        public let appPkgName: String

        public init(resourceId: String, appIconUrl: String, appName: String, appPkgName: String) {
            self.resourceId = resourceId
            self.appIconUrl = appIconUrl
            self.appName = appName
            self.appPkgName = appPkgName
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case appIconUrl = "AppIconUrl"
            case appName = "AppName"
            case appPkgName = "AppPkgName"
        }
    }

    /// CreateBindInstance返回参数结构体
    public struct CreateBindInstanceResponse: TCResponseModel {
        /// 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        public let progress: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case progress = "Progress"
            case requestId = "RequestId"
        }
    }

    /// 将应用绑定到资源
    ///
    /// 将应用和资源进行绑定。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createBindInstance(_ input: CreateBindInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBindInstanceResponse> {
        self.client.execute(action: "CreateBindInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将应用绑定到资源
    ///
    /// 将应用和资源进行绑定。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createBindInstance(_ input: CreateBindInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBindInstanceResponse {
        try await self.client.execute(action: "CreateBindInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 将应用绑定到资源
    ///
    /// 将应用和资源进行绑定。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createBindInstance(resourceId: String, appIconUrl: String, appName: String, appPkgName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBindInstanceResponse> {
        self.createBindInstance(CreateBindInstanceRequest(resourceId: resourceId, appIconUrl: appIconUrl, appName: appName, appPkgName: appPkgName), region: region, logger: logger, on: eventLoop)
    }

    /// 将应用绑定到资源
    ///
    /// 将应用和资源进行绑定。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func createBindInstance(resourceId: String, appIconUrl: String, appName: String, appPkgName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBindInstanceResponse {
        try await self.createBindInstance(CreateBindInstanceRequest(resourceId: resourceId, appIconUrl: appIconUrl, appName: appName, appPkgName: appPkgName), region: region, logger: logger, on: eventLoop)
    }
}
