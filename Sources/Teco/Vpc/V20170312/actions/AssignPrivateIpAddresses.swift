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

extension Vpc {
    /// AssignPrivateIpAddresses请求参数结构体
    public struct AssignPrivateIpAddressesRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// 指定的内网IP信息，单次最多指定10个。与SecondaryPrivateIpAddressCount至少提供一个。
        public let privateIpAddresses: [PrivateIpAddressSpecification]?

        /// 新申请的内网IP地址个数，与PrivateIpAddresses至少提供一个。内网IP地址个数总和不能超过配额数，详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
        public let secondaryPrivateIpAddressCount: UInt64?

        public init(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, secondaryPrivateIpAddressCount: UInt64? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.privateIpAddresses = privateIpAddresses
            self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case privateIpAddresses = "PrivateIpAddresses"
            case secondaryPrivateIpAddressCount = "SecondaryPrivateIpAddressCount"
        }
    }

    /// AssignPrivateIpAddresses返回参数结构体
    public struct AssignPrivateIpAddressesResponse: TCResponseModel {
        /// 内网IP详细信息。
        public let privateIpAddressSet: [PrivateIpAddressSpecification]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case privateIpAddressSet = "PrivateIpAddressSet"
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡申请内网 IP
    ///
    /// 本接口（AssignPrivateIpAddresses）用于弹性网卡申请内网 IP。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 可以指定内网IP地址申请，内网IP地址类型不能为主IP，主IP已存在，不能修改，内网IP必须要弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助内网IP，接口会在弹性网卡所在子网网段内返回指定数量的辅助内网IP。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func assignPrivateIpAddresses(_ input: AssignPrivateIpAddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssignPrivateIpAddressesResponse > {
        self.client.execute(action: "AssignPrivateIpAddresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡申请内网 IP
    ///
    /// 本接口（AssignPrivateIpAddresses）用于弹性网卡申请内网 IP。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 可以指定内网IP地址申请，内网IP地址类型不能为主IP，主IP已存在，不能修改，内网IP必须要弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助内网IP，接口会在弹性网卡所在子网网段内返回指定数量的辅助内网IP。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func assignPrivateIpAddresses(_ input: AssignPrivateIpAddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignPrivateIpAddressesResponse {
        try await self.client.execute(action: "AssignPrivateIpAddresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡申请内网 IP
    ///
    /// 本接口（AssignPrivateIpAddresses）用于弹性网卡申请内网 IP。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 可以指定内网IP地址申请，内网IP地址类型不能为主IP，主IP已存在，不能修改，内网IP必须要弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助内网IP，接口会在弹性网卡所在子网网段内返回指定数量的辅助内网IP。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func assignPrivateIpAddresses(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssignPrivateIpAddressesResponse > {
        self.assignPrivateIpAddresses(AssignPrivateIpAddressesRequest(networkInterfaceId: networkInterfaceId, privateIpAddresses: privateIpAddresses, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount), logger: logger, on: eventLoop)
    }

    /// 弹性网卡申请内网 IP
    ///
    /// 本接口（AssignPrivateIpAddresses）用于弹性网卡申请内网 IP。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
    /// * 可以指定内网IP地址申请，内网IP地址类型不能为主IP，主IP已存在，不能修改，内网IP必须要弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助内网IP，接口会在弹性网卡所在子网网段内返回指定数量的辅助内网IP。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func assignPrivateIpAddresses(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification]? = nil, secondaryPrivateIpAddressCount: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignPrivateIpAddressesResponse {
        try await self.assignPrivateIpAddresses(AssignPrivateIpAddressesRequest(networkInterfaceId: networkInterfaceId, privateIpAddresses: privateIpAddresses, secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount), logger: logger, on: eventLoop)
    }
}
