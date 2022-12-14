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

extension Redis {
    /// DescribeInstanceParams请求参数结构体
    public struct DescribeInstanceParamsRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceParams返回参数结构体
    public struct DescribeInstanceParamsResponse: TCResponseModel {
        /// 实例参数个数
        public let totalCount: Int64

        /// 实例枚举类型参数
        public let instanceEnumParam: [InstanceEnumParam]

        /// 实例整型参数
        public let instanceIntegerParam: [InstanceIntegerParam]

        /// 实例字符型参数
        public let instanceTextParam: [InstanceTextParam]

        /// 实例多选项型参数
        public let instanceMultiParam: [InstanceMultiParam]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceEnumParam = "InstanceEnumParam"
            case instanceIntegerParam = "InstanceIntegerParam"
            case instanceTextParam = "InstanceTextParam"
            case instanceMultiParam = "InstanceMultiParam"
            case requestId = "RequestId"
        }
    }

    /// 查询实例的参数列表
    ///
    /// 查询实例参数列表
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceParamsResponse > {
        self.client.execute(action: "DescribeInstanceParams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例的参数列表
    ///
    /// 查询实例参数列表
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.client.execute(action: "DescribeInstanceParams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例的参数列表
    ///
    /// 查询实例参数列表
    @inlinable
    public func describeInstanceParams(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceParamsResponse > {
        self.describeInstanceParams(DescribeInstanceParamsRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }

    /// 查询实例的参数列表
    ///
    /// 查询实例参数列表
    @inlinable
    public func describeInstanceParams(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.describeInstanceParams(DescribeInstanceParamsRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }
}
