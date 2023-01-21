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

extension Tione {
    /// DescribeModelService请求参数结构体
    public struct DescribeModelServiceRequest: TCRequestModel {
        /// 服务id
        public let serviceId: String

        public init(serviceId: String) {
            self.serviceId = serviceId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
        }
    }

    /// DescribeModelService返回参数结构体
    public struct DescribeModelServiceResponse: TCResponseModel {
        /// 服务信息
        public let service: Service

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case requestId = "RequestId"
        }
    }

    /// 查询单个服务
    @inlinable
    public func describeModelService(_ input: DescribeModelServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServiceResponse> {
        self.client.execute(action: "DescribeModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单个服务
    @inlinable
    public func describeModelService(_ input: DescribeModelServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceResponse {
        try await self.client.execute(action: "DescribeModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单个服务
    @inlinable
    public func describeModelService(serviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServiceResponse> {
        self.describeModelService(DescribeModelServiceRequest(serviceId: serviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单个服务
    @inlinable
    public func describeModelService(serviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceResponse {
        try await self.describeModelService(DescribeModelServiceRequest(serviceId: serviceId), region: region, logger: logger, on: eventLoop)
    }
}
