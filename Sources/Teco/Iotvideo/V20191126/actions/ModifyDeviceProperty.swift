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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// ModifyDeviceProperty请求参数结构体
    public struct ModifyDevicePropertyRequest: TCRequestModel {
        /// 设备TID
        public let tid: String

        /// 如果设备处于休眠状态，是否唤醒设备
        public let wakeup: Bool

        /// 物模型的分支路径
        public let branch: String

        /// 写入的物模型数据，如果是json需要转义成字符串
        public let value: String

        /// Value字段是否为数值（float、int）
        public let isNum: Bool?

        public init(tid: String, wakeup: Bool, branch: String, value: String, isNum: Bool? = nil) {
            self.tid = tid
            self.wakeup = wakeup
            self.branch = branch
            self.value = value
            self.isNum = isNum
        }

        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case wakeup = "Wakeup"
            case branch = "Branch"
            case value = "Value"
            case isNum = "IsNum"
        }
    }

    /// ModifyDeviceProperty返回参数结构体
    public struct ModifyDevicePropertyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改设备物模型属性
    ///
    /// 本接口（ModifyDeviceProperty）用于修改设备物模型的属性（ProWritable）。
    /// 可对setVal数据属性进行写入,如:
    /// ProWritable.Pos.setVal
    /// 对于嵌套类型的可写属性，可以仅对其部分数据内容进行写入，如:
    /// ProWritable.Pos.setVal.x;
    /// 可写属性云端写入成功即返回;云端向设备端发布属性变更参数;若当前设备不在线,在设备下次上线时会自动更新这些属性参数;
    /// 物模型写入数据时,不需要传入时标信息,平台以当前时标作为数据的时标更新物模型中的时标信息。
    @inlinable @discardableResult
    public func modifyDeviceProperty(_ input: ModifyDevicePropertyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDevicePropertyResponse> {
        self.client.execute(action: "ModifyDeviceProperty", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改设备物模型属性
    ///
    /// 本接口（ModifyDeviceProperty）用于修改设备物模型的属性（ProWritable）。
    /// 可对setVal数据属性进行写入,如:
    /// ProWritable.Pos.setVal
    /// 对于嵌套类型的可写属性，可以仅对其部分数据内容进行写入，如:
    /// ProWritable.Pos.setVal.x;
    /// 可写属性云端写入成功即返回;云端向设备端发布属性变更参数;若当前设备不在线,在设备下次上线时会自动更新这些属性参数;
    /// 物模型写入数据时,不需要传入时标信息,平台以当前时标作为数据的时标更新物模型中的时标信息。
    @inlinable @discardableResult
    public func modifyDeviceProperty(_ input: ModifyDevicePropertyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDevicePropertyResponse {
        try await self.client.execute(action: "ModifyDeviceProperty", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改设备物模型属性
    ///
    /// 本接口（ModifyDeviceProperty）用于修改设备物模型的属性（ProWritable）。
    /// 可对setVal数据属性进行写入,如:
    /// ProWritable.Pos.setVal
    /// 对于嵌套类型的可写属性，可以仅对其部分数据内容进行写入，如:
    /// ProWritable.Pos.setVal.x;
    /// 可写属性云端写入成功即返回;云端向设备端发布属性变更参数;若当前设备不在线,在设备下次上线时会自动更新这些属性参数;
    /// 物模型写入数据时,不需要传入时标信息,平台以当前时标作为数据的时标更新物模型中的时标信息。
    @inlinable @discardableResult
    public func modifyDeviceProperty(tid: String, wakeup: Bool, branch: String, value: String, isNum: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDevicePropertyResponse> {
        self.modifyDeviceProperty(.init(tid: tid, wakeup: wakeup, branch: branch, value: value, isNum: isNum), region: region, logger: logger, on: eventLoop)
    }

    /// 修改设备物模型属性
    ///
    /// 本接口（ModifyDeviceProperty）用于修改设备物模型的属性（ProWritable）。
    /// 可对setVal数据属性进行写入,如:
    /// ProWritable.Pos.setVal
    /// 对于嵌套类型的可写属性，可以仅对其部分数据内容进行写入，如:
    /// ProWritable.Pos.setVal.x;
    /// 可写属性云端写入成功即返回;云端向设备端发布属性变更参数;若当前设备不在线,在设备下次上线时会自动更新这些属性参数;
    /// 物模型写入数据时,不需要传入时标信息,平台以当前时标作为数据的时标更新物模型中的时标信息。
    @inlinable @discardableResult
    public func modifyDeviceProperty(tid: String, wakeup: Bool, branch: String, value: String, isNum: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDevicePropertyResponse {
        try await self.modifyDeviceProperty(.init(tid: tid, wakeup: wakeup, branch: branch, value: value, isNum: isNum), region: region, logger: logger, on: eventLoop)
    }
}
