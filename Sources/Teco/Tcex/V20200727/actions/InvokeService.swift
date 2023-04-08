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

extension Tcex {
    /// InvokeService请求参数结构体
    public struct InvokeServiceRequest: TCRequestModel {
        /// 待调用的服务ID。
        public let serviceId: String

        /// 要调用服务的状态：0表示调试版本，1表示上线版本
        public let serviceStatus: Int64

        /// 用于测试的文档的URL。
        public let fileUrl: String?

        /// 用于测试的文本，当此值不为空时，调用内容以此参数的值为准。
        public let input: String?

        public init(serviceId: String, serviceStatus: Int64, fileUrl: String? = nil, input: String? = nil) {
            self.serviceId = serviceId
            self.serviceStatus = serviceStatus
            self.fileUrl = fileUrl
            self.input = input
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case serviceStatus = "ServiceStatus"
            case fileUrl = "FileUrl"
            case input = "Input"
        }
    }

    /// InvokeService返回参数结构体
    public struct InvokeServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调用服务
    ///
    /// 通过传入文档url，测试服务算法。此接口需要和DescribeInvocationResult接口配置使用，该接口使用InvokeService返回的RequestId作为InvokeId参数，用于查询调用结果。
    @available(*, deprecated, message: "产品控制台已经下线")
    @inlinable @discardableResult
    public func invokeService(_ input: InvokeServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeServiceResponse> {
        self.client.execute(action: "InvokeService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调用服务
    ///
    /// 通过传入文档url，测试服务算法。此接口需要和DescribeInvocationResult接口配置使用，该接口使用InvokeService返回的RequestId作为InvokeId参数，用于查询调用结果。
    @available(*, deprecated, message: "产品控制台已经下线")
    @inlinable @discardableResult
    public func invokeService(_ input: InvokeServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeServiceResponse {
        try await self.client.execute(action: "InvokeService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调用服务
    ///
    /// 通过传入文档url，测试服务算法。此接口需要和DescribeInvocationResult接口配置使用，该接口使用InvokeService返回的RequestId作为InvokeId参数，用于查询调用结果。
    @available(*, deprecated, message: "产品控制台已经下线")
    @inlinable @discardableResult
    public func invokeService(serviceId: String, serviceStatus: Int64, fileUrl: String? = nil, input: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeServiceResponse> {
        self.invokeService(.init(serviceId: serviceId, serviceStatus: serviceStatus, fileUrl: fileUrl, input: input), region: region, logger: logger, on: eventLoop)
    }

    /// 调用服务
    ///
    /// 通过传入文档url，测试服务算法。此接口需要和DescribeInvocationResult接口配置使用，该接口使用InvokeService返回的RequestId作为InvokeId参数，用于查询调用结果。
    @available(*, deprecated, message: "产品控制台已经下线")
    @inlinable @discardableResult
    public func invokeService(serviceId: String, serviceStatus: Int64, fileUrl: String? = nil, input: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeServiceResponse {
        try await self.invokeService(.init(serviceId: serviceId, serviceStatus: serviceStatus, fileUrl: fileUrl, input: input), region: region, logger: logger, on: eventLoop)
    }
}
