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

extension Lighthouse {
    /// ModifyInstancesRenewFlag请求参数结构体
    public struct ModifyInstancesRenewFlagRequest: TCRequestModel {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]

        /// 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费<br><br>若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        public let renewFlag: String

        public init(instanceIds: [String], renewFlag: String) {
            self.instanceIds = instanceIds
            self.renewFlag = renewFlag
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case renewFlag = "RenewFlag"
        }
    }

    /// ModifyInstancesRenewFlag返回参数结构体
    public struct ModifyInstancesRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyInstancesRenewFlag) 用于修改包年包月实例续费标识。
    /// * 实例被标识为自动续费后，每次在实例到期时，会自动续费一个月。
    /// * 支持批量操作。每次请求批量实例的上限为100。
    /// * 实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesRenewFlag(_ input: ModifyInstancesRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstancesRenewFlagResponse > {
        self.client.execute(action: "ModifyInstancesRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyInstancesRenewFlag) 用于修改包年包月实例续费标识。
    /// * 实例被标识为自动续费后，每次在实例到期时，会自动续费一个月。
    /// * 支持批量操作。每次请求批量实例的上限为100。
    /// * 实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesRenewFlag(_ input: ModifyInstancesRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesRenewFlagResponse {
        try await self.client.execute(action: "ModifyInstancesRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyInstancesRenewFlag) 用于修改包年包月实例续费标识。
    /// * 实例被标识为自动续费后，每次在实例到期时，会自动续费一个月。
    /// * 支持批量操作。每次请求批量实例的上限为100。
    /// * 实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesRenewFlag(instanceIds: [String], renewFlag: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstancesRenewFlagResponse > {
        self.modifyInstancesRenewFlag(ModifyInstancesRenewFlagRequest(instanceIds: instanceIds, renewFlag: renewFlag), logger: logger, on: eventLoop)
    }

    /// 修改实例续费标识
    ///
    /// 本接口 (ModifyInstancesRenewFlag) 用于修改包年包月实例续费标识。
    /// * 实例被标识为自动续费后，每次在实例到期时，会自动续费一个月。
    /// * 支持批量操作。每次请求批量实例的上限为100。
    /// * 实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func modifyInstancesRenewFlag(instanceIds: [String], renewFlag: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesRenewFlagResponse {
        try await self.modifyInstancesRenewFlag(ModifyInstancesRenewFlagRequest(instanceIds: instanceIds, renewFlag: renewFlag), logger: logger, on: eventLoop)
    }
}
