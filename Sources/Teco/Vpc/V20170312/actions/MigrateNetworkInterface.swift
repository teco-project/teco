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

extension Vpc {
    /// MigrateNetworkInterface请求参数结构体
    public struct MigrateNetworkInterfaceRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// 弹性网卡当前绑定的CVM实例ID。形如：ins-r8hr2upy。
        public let sourceInstanceId: String

        /// 待迁移的目的CVM实例ID。
        public let destinationInstanceId: String

        /// 网卡绑定类型：0 标准型 1 扩展型。
        public let attachType: UInt64?

        public init(networkInterfaceId: String, sourceInstanceId: String, destinationInstanceId: String, attachType: UInt64? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.sourceInstanceId = sourceInstanceId
            self.destinationInstanceId = destinationInstanceId
            self.attachType = attachType
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case sourceInstanceId = "SourceInstanceId"
            case destinationInstanceId = "DestinationInstanceId"
            case attachType = "AttachType"
        }
    }

    /// MigrateNetworkInterface返回参数结构体
    public struct MigrateNetworkInterfaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 弹性网卡迁移
    ///
    /// 本接口（MigrateNetworkInterface）用于弹性网卡迁移。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func migrateNetworkInterface(_ input: MigrateNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateNetworkInterfaceResponse> {
        self.client.execute(action: "MigrateNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 弹性网卡迁移
    ///
    /// 本接口（MigrateNetworkInterface）用于弹性网卡迁移。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func migrateNetworkInterface(_ input: MigrateNetworkInterfaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigrateNetworkInterfaceResponse {
        try await self.client.execute(action: "MigrateNetworkInterface", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 弹性网卡迁移
    ///
    /// 本接口（MigrateNetworkInterface）用于弹性网卡迁移。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func migrateNetworkInterface(networkInterfaceId: String, sourceInstanceId: String, destinationInstanceId: String, attachType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateNetworkInterfaceResponse> {
        self.migrateNetworkInterface(.init(networkInterfaceId: networkInterfaceId, sourceInstanceId: sourceInstanceId, destinationInstanceId: destinationInstanceId, attachType: attachType), region: region, logger: logger, on: eventLoop)
    }

    /// 弹性网卡迁移
    ///
    /// 本接口（MigrateNetworkInterface）用于弹性网卡迁移。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func migrateNetworkInterface(networkInterfaceId: String, sourceInstanceId: String, destinationInstanceId: String, attachType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigrateNetworkInterfaceResponse {
        try await self.migrateNetworkInterface(.init(networkInterfaceId: networkInterfaceId, sourceInstanceId: sourceInstanceId, destinationInstanceId: destinationInstanceId, attachType: attachType), region: region, logger: logger, on: eventLoop)
    }
}
