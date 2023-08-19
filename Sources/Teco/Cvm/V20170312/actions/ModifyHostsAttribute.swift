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

extension Cvm {
    /// ModifyHostsAttribute请求参数结构体
    public struct ModifyHostsAttributeRequest: TCRequest {
        /// 一个或多个待操作的CDH实例ID。
        public let hostIds: [String]

        /// CDH实例显示名称。可任意命名，但不得超过60个字符。
        public let hostName: String?

        /// 自动续费标识。取值范围：
        ///
        /// - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        /// - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        /// - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费
        ///
        /// 若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        public let renewFlag: String?

        /// 项目ID。项目可以使用[AddProject](https://cloud.tencent.com/doc/api/403/4398)接口创建。可通过[`DescribeProject`](https://cloud.tencent.com/document/product/378/4400) API返回值中的`projectId`获取。后续使用[DescribeHosts](https://cloud.tencent.com/document/api/213/16474)接口查询实例时，项目ID可用于过滤结果。
        public let projectId: UInt64?

        public init(hostIds: [String], hostName: String? = nil, renewFlag: String? = nil, projectId: UInt64? = nil) {
            self.hostIds = hostIds
            self.hostName = hostName
            self.renewFlag = renewFlag
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case hostIds = "HostIds"
            case hostName = "HostName"
            case renewFlag = "RenewFlag"
            case projectId = "ProjectId"
        }
    }

    /// ModifyHostsAttribute返回参数结构体
    public struct ModifyHostsAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CDH实例的属性
    ///
    /// 本接口（ModifyHostsAttribute）用于修改CDH实例的属性，如实例名称和续费标记等。参数HostName和RenewFlag必须设置其中一个，但不能同时设置。
    @inlinable @discardableResult
    public func modifyHostsAttribute(_ input: ModifyHostsAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostsAttributeResponse> {
        self.client.execute(action: "ModifyHostsAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CDH实例的属性
    ///
    /// 本接口（ModifyHostsAttribute）用于修改CDH实例的属性，如实例名称和续费标记等。参数HostName和RenewFlag必须设置其中一个，但不能同时设置。
    @inlinable @discardableResult
    public func modifyHostsAttribute(_ input: ModifyHostsAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostsAttributeResponse {
        try await self.client.execute(action: "ModifyHostsAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CDH实例的属性
    ///
    /// 本接口（ModifyHostsAttribute）用于修改CDH实例的属性，如实例名称和续费标记等。参数HostName和RenewFlag必须设置其中一个，但不能同时设置。
    @inlinable @discardableResult
    public func modifyHostsAttribute(hostIds: [String], hostName: String? = nil, renewFlag: String? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHostsAttributeResponse> {
        self.modifyHostsAttribute(.init(hostIds: hostIds, hostName: hostName, renewFlag: renewFlag, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CDH实例的属性
    ///
    /// 本接口（ModifyHostsAttribute）用于修改CDH实例的属性，如实例名称和续费标记等。参数HostName和RenewFlag必须设置其中一个，但不能同时设置。
    @inlinable @discardableResult
    public func modifyHostsAttribute(hostIds: [String], hostName: String? = nil, renewFlag: String? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHostsAttributeResponse {
        try await self.modifyHostsAttribute(.init(hostIds: hostIds, hostName: hostName, renewFlag: renewFlag, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
