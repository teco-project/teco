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

extension Cwp {
    /// DescribeAssetHostTotalCount请求参数结构体
    public struct DescribeAssetHostTotalCountRequest: TCRequest {
        /// 主机Uuid
        public let uuid: String

        /// 主机Quuid
        public let quuid: String

        public init(uuid: String, quuid: String) {
            self.uuid = uuid
            self.quuid = quuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
        }
    }

    /// DescribeAssetHostTotalCount返回参数结构体
    public struct DescribeAssetHostTotalCountResponse: TCResponse {
        /// 各项资源数量
        /// system : 资源监控
        /// account: 账号
        /// port: 端口
        /// process: 进程
        /// app: 应用软件
        /// database:数据库
        /// webapp: Web应用
        /// webframe: Web框架
        /// webservice: Web服务
        /// weblocation: Web站点
        /// systempackage: 系统安装包
        /// jar: jar包
        /// initservice:启动服务
        /// env: 环境变量
        /// coremodule: 内核模块
        public let types: [AssetKeyVal]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case types = "Types"
            case requestId = "RequestId"
        }
    }

    /// 获取主机所有资源数量
    @inlinable
    public func describeAssetHostTotalCount(_ input: DescribeAssetHostTotalCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetHostTotalCountResponse> {
        self.client.execute(action: "DescribeAssetHostTotalCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主机所有资源数量
    @inlinable
    public func describeAssetHostTotalCount(_ input: DescribeAssetHostTotalCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetHostTotalCountResponse {
        try await self.client.execute(action: "DescribeAssetHostTotalCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主机所有资源数量
    @inlinable
    public func describeAssetHostTotalCount(uuid: String, quuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetHostTotalCountResponse> {
        self.describeAssetHostTotalCount(.init(uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主机所有资源数量
    @inlinable
    public func describeAssetHostTotalCount(uuid: String, quuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetHostTotalCountResponse {
        try await self.describeAssetHostTotalCount(.init(uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }
}
