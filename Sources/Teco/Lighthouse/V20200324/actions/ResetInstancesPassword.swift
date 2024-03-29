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

extension Lighthouse {
    /// ResetInstancesPassword请求参数结构体
    public struct ResetInstancesPasswordRequest: TCRequest {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。
        public let instanceIds: [String]

        /// 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        /// `LINUX_UNIX` 实例密码必须 8-30 位，推荐使用 12 位以上密码，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：
        ///
        /// - 小写字母：[a-z]
        /// - 大写字母：[A-Z]
        /// - 数字：0-9
        /// - 特殊字符： ()\`\~!@#$%^&\*-+=\_|{}[]:;' <>,.?/
        ///
        /// `WINDOWS` 实例密码必须 12-30 位，不能以“/”开头且不包括用户名，至少包含以下字符中的三种不同字符
        ///
        /// - 小写字母：[a-z]
        /// - 大写字母：[A-Z]
        /// - 数字： 0-9
        /// - 特殊字符：()\`~!@#$%^&\*-+=\_|{}[]:;' <>,.?/
        /// - 如果实例即包含 `LINUX_UNIX` 实例又包含 `WINDOWS` 实例，则密码复杂度限制按照 `WINDOWS` 实例的限制。
        public let password: String

        /// 待重置密码的实例操作系统用户名。不得超过 64 个字符。
        public let userName: String?

        public init(instanceIds: [String], password: String, userName: String? = nil) {
            self.instanceIds = instanceIds
            self.password = password
            self.userName = userName
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case password = "Password"
            case userName = "UserName"
        }
    }

    /// ResetInstancesPassword返回参数结构体
    public struct ResetInstancesPasswordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置实例密码
    ///
    /// 本接口（ResetInstancesPassword）用于将实例操作系统的密码重置为用户指定的密码。
    /// * 只修改管理员账号的密码。实例的操作系统不同，管理员账号也会不一样（Windows 为 Administrator，Ubuntu 为 ubuntu ，其它系统为 root）。
    /// * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为 100。
    /// * 建议对运行中的实例先手动关机，然后再进行密码重置。如实例处于运行中状态，本接口操作过程中会对实例进行关机操作，尝试正常关机失败后进行强制关机。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    /// 注意：强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏。
    @inlinable @discardableResult
    public func resetInstancesPassword(_ input: ResetInstancesPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstancesPasswordResponse> {
        self.client.execute(action: "ResetInstancesPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置实例密码
    ///
    /// 本接口（ResetInstancesPassword）用于将实例操作系统的密码重置为用户指定的密码。
    /// * 只修改管理员账号的密码。实例的操作系统不同，管理员账号也会不一样（Windows 为 Administrator，Ubuntu 为 ubuntu ，其它系统为 root）。
    /// * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为 100。
    /// * 建议对运行中的实例先手动关机，然后再进行密码重置。如实例处于运行中状态，本接口操作过程中会对实例进行关机操作，尝试正常关机失败后进行强制关机。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    /// 注意：强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏。
    @inlinable @discardableResult
    public func resetInstancesPassword(_ input: ResetInstancesPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesPasswordResponse {
        try await self.client.execute(action: "ResetInstancesPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置实例密码
    ///
    /// 本接口（ResetInstancesPassword）用于将实例操作系统的密码重置为用户指定的密码。
    /// * 只修改管理员账号的密码。实例的操作系统不同，管理员账号也会不一样（Windows 为 Administrator，Ubuntu 为 ubuntu ，其它系统为 root）。
    /// * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为 100。
    /// * 建议对运行中的实例先手动关机，然后再进行密码重置。如实例处于运行中状态，本接口操作过程中会对实例进行关机操作，尝试正常关机失败后进行强制关机。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    /// 注意：强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏。
    @inlinable @discardableResult
    public func resetInstancesPassword(instanceIds: [String], password: String, userName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstancesPasswordResponse> {
        self.resetInstancesPassword(.init(instanceIds: instanceIds, password: password, userName: userName), region: region, logger: logger, on: eventLoop)
    }

    /// 重置实例密码
    ///
    /// 本接口（ResetInstancesPassword）用于将实例操作系统的密码重置为用户指定的密码。
    /// * 只修改管理员账号的密码。实例的操作系统不同，管理员账号也会不一样（Windows 为 Administrator，Ubuntu 为 ubuntu ，其它系统为 root）。
    /// * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为 100。
    /// * 建议对运行中的实例先手动关机，然后再进行密码重置。如实例处于运行中状态，本接口操作过程中会对实例进行关机操作，尝试正常关机失败后进行强制关机。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    /// 注意：强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏。
    @inlinable @discardableResult
    public func resetInstancesPassword(instanceIds: [String], password: String, userName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesPasswordResponse {
        try await self.resetInstancesPassword(.init(instanceIds: instanceIds, password: password, userName: userName), region: region, logger: logger, on: eventLoop)
    }
}
