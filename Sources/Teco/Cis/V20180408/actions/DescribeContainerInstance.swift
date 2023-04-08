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

import TecoCore

extension Cis {
    /// DescribeContainerInstance请求参数结构体
    public struct DescribeContainerInstanceRequest: TCRequestModel {
        /// 容器实例名称
        public let instanceName: String

        public init(instanceName: String) {
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
        }
    }

    /// DescribeContainerInstance返回参数结构体
    public struct DescribeContainerInstanceResponse: TCResponseModel {
        /// 容器实例详细信息
        public let containerInstance: ContainerInstance

        /// 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerInstance = "ContainerInstance"
            case requestId = "RequestId"
        }
    }

    /// 获取容器实例信息
    ///
    /// 此接口（DescribeContainerInstance）用于获取容器实例详情
    @inlinable
    public func describeContainerInstance(_ input: DescribeContainerInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerInstanceResponse> {
        self.client.execute(action: "DescribeContainerInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取容器实例信息
    ///
    /// 此接口（DescribeContainerInstance）用于获取容器实例详情
    @inlinable
    public func describeContainerInstance(_ input: DescribeContainerInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerInstanceResponse {
        try await self.client.execute(action: "DescribeContainerInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取容器实例信息
    ///
    /// 此接口（DescribeContainerInstance）用于获取容器实例详情
    @inlinable
    public func describeContainerInstance(instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerInstanceResponse> {
        self.describeContainerInstance(.init(instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取容器实例信息
    ///
    /// 此接口（DescribeContainerInstance）用于获取容器实例详情
    @inlinable
    public func describeContainerInstance(instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerInstanceResponse {
        try await self.describeContainerInstance(.init(instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }
}
