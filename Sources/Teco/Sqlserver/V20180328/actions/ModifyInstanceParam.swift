//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Sqlserver {
    /// ModifyInstanceParam请求参数结构体
    public struct ModifyInstanceParamRequest: TCRequestModel {
        /// 实例短 ID 列表
        public let instanceIds: [String]

        /// 要修改的参数列表。每一个元素是 Name 和 CurrentValue 的组合。Name 是参数名，CurrentValue 是要修改的值。<b>注意</b>：如果修改的参数需要<b>重启</b>实例，那么您的实例将会在执行修改时<b>重启</b>。您可以通过DescribeInstanceParams接口查询修改参数时是否会重启实例，以免导致您的实例不符合预期重启。
        public let paramList: [Parameter]

        /// 执行参数调整任务的方式，默认为 0。支持值包括：0 - 立刻执行，1 - 时间窗执行。
        public let waitSwitch: Int64?

        public init(instanceIds: [String], paramList: [Parameter], waitSwitch: Int64? = nil) {
            self.instanceIds = instanceIds
            self.paramList = paramList
            self.waitSwitch = waitSwitch
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case paramList = "ParamList"
            case waitSwitch = "WaitSwitch"
        }
    }

    /// ModifyInstanceParam返回参数结构体
    public struct ModifyInstanceParamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。
    /// <b>注意</b>：如果修改的参数是需要<b>重启实例</b>的，那么实例将会按照WaitSwitch参数的设置(可能是立即执行也可能在可维护时间窗内自动执行)在执行参数修改时<b>重启实例</b>。
    /// 您可以通过DescribeInstanceParams接口查询修改参数时是否会重启实例，以免导致您的实例不符合预期重启。
    @inlinable @discardableResult
    public func modifyInstanceParam(_ input: ModifyInstanceParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceParamResponse> {
        self.client.execute(action: "ModifyInstanceParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。
    /// <b>注意</b>：如果修改的参数是需要<b>重启实例</b>的，那么实例将会按照WaitSwitch参数的设置(可能是立即执行也可能在可维护时间窗内自动执行)在执行参数修改时<b>重启实例</b>。
    /// 您可以通过DescribeInstanceParams接口查询修改参数时是否会重启实例，以免导致您的实例不符合预期重启。
    @inlinable @discardableResult
    public func modifyInstanceParam(_ input: ModifyInstanceParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamResponse {
        try await self.client.execute(action: "ModifyInstanceParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。
    /// <b>注意</b>：如果修改的参数是需要<b>重启实例</b>的，那么实例将会按照WaitSwitch参数的设置(可能是立即执行也可能在可维护时间窗内自动执行)在执行参数修改时<b>重启实例</b>。
    /// 您可以通过DescribeInstanceParams接口查询修改参数时是否会重启实例，以免导致您的实例不符合预期重启。
    @inlinable @discardableResult
    public func modifyInstanceParam(instanceIds: [String], paramList: [Parameter], waitSwitch: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceParamResponse> {
        self.modifyInstanceParam(ModifyInstanceParamRequest(instanceIds: instanceIds, paramList: paramList, waitSwitch: waitSwitch), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。
    /// <b>注意</b>：如果修改的参数是需要<b>重启实例</b>的，那么实例将会按照WaitSwitch参数的设置(可能是立即执行也可能在可维护时间窗内自动执行)在执行参数修改时<b>重启实例</b>。
    /// 您可以通过DescribeInstanceParams接口查询修改参数时是否会重启实例，以免导致您的实例不符合预期重启。
    @inlinable @discardableResult
    public func modifyInstanceParam(instanceIds: [String], paramList: [Parameter], waitSwitch: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamResponse {
        try await self.modifyInstanceParam(ModifyInstanceParamRequest(instanceIds: instanceIds, paramList: paramList, waitSwitch: waitSwitch), region: region, logger: logger, on: eventLoop)
    }
}
