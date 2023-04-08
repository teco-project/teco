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

extension Vod {
    /// ModifyEventConfig请求参数结构体
    public struct ModifyEventConfigRequest: TCRequestModel {
        /// 接收事件通知的方式。
        /// <li>PUSH：[HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)；</li>
        /// <li>PULL：[基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779)。</li>
        public let mode: String?

        /// 采用 [HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 接收方式时，用于接收 3.0 格式回调的地址。
        /// 注意：如果带 NotificationUrl  参数且值为空字符串时将会清空 3.0 格式回调地址。
        public let notificationUrl: String?

        /// 是否接收 [视频上传完成](https://cloud.tencent.com/document/product/266/7830) 事件通知， 默认 "OFF" 为忽略该事件通知，"ON" 为接收事件通知。
        public let uploadMediaCompleteEventSwitch: String?

        /// 是否接收 [视频删除完成](https://cloud.tencent.com/document/product/266/13434) 事件通知，  默认 "OFF" 为忽略该事件通知，"ON" 为接收事件通知。
        public let deleteMediaCompleteEventSwitch: String?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(mode: String? = nil, notificationUrl: String? = nil, uploadMediaCompleteEventSwitch: String? = nil, deleteMediaCompleteEventSwitch: String? = nil, subAppId: UInt64? = nil) {
            self.mode = mode
            self.notificationUrl = notificationUrl
            self.uploadMediaCompleteEventSwitch = uploadMediaCompleteEventSwitch
            self.deleteMediaCompleteEventSwitch = deleteMediaCompleteEventSwitch
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case notificationUrl = "NotificationUrl"
            case uploadMediaCompleteEventSwitch = "UploadMediaCompleteEventSwitch"
            case deleteMediaCompleteEventSwitch = "DeleteMediaCompleteEventSwitch"
            case subAppId = "SubAppId"
        }
    }

    /// ModifyEventConfig返回参数结构体
    public struct ModifyEventConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改事件通知配置
    ///
    /// 腾讯云点播为客户提供了媒体上传、媒体管理、媒体处理等等服务，在这些服务执行过程或执行结束时，腾讯云点播也提供各种对应的事件通知，方便开发者感知服务处理状态，并做下一步的业务操作。
    ///
    /// 开发者可以通过调用本接口来实现：
    /// - 设置接收回调通知的类型，目前有[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 和 [基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779) 两种类型。
    /// - 对于[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)，可设置 3.0 格式回调的地址。3.0 格式回调的说明参见 [历史格式回调](https://cloud.tencent.com/document/product/266/33796)。
    /// - 对具体事件服务的通知事件选择设置接收或者忽略。
    @inlinable @discardableResult
    public func modifyEventConfig(_ input: ModifyEventConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEventConfigResponse> {
        self.client.execute(action: "ModifyEventConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改事件通知配置
    ///
    /// 腾讯云点播为客户提供了媒体上传、媒体管理、媒体处理等等服务，在这些服务执行过程或执行结束时，腾讯云点播也提供各种对应的事件通知，方便开发者感知服务处理状态，并做下一步的业务操作。
    ///
    /// 开发者可以通过调用本接口来实现：
    /// - 设置接收回调通知的类型，目前有[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 和 [基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779) 两种类型。
    /// - 对于[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)，可设置 3.0 格式回调的地址。3.0 格式回调的说明参见 [历史格式回调](https://cloud.tencent.com/document/product/266/33796)。
    /// - 对具体事件服务的通知事件选择设置接收或者忽略。
    @inlinable @discardableResult
    public func modifyEventConfig(_ input: ModifyEventConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEventConfigResponse {
        try await self.client.execute(action: "ModifyEventConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改事件通知配置
    ///
    /// 腾讯云点播为客户提供了媒体上传、媒体管理、媒体处理等等服务，在这些服务执行过程或执行结束时，腾讯云点播也提供各种对应的事件通知，方便开发者感知服务处理状态，并做下一步的业务操作。
    ///
    /// 开发者可以通过调用本接口来实现：
    /// - 设置接收回调通知的类型，目前有[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 和 [基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779) 两种类型。
    /// - 对于[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)，可设置 3.0 格式回调的地址。3.0 格式回调的说明参见 [历史格式回调](https://cloud.tencent.com/document/product/266/33796)。
    /// - 对具体事件服务的通知事件选择设置接收或者忽略。
    @inlinable @discardableResult
    public func modifyEventConfig(mode: String? = nil, notificationUrl: String? = nil, uploadMediaCompleteEventSwitch: String? = nil, deleteMediaCompleteEventSwitch: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEventConfigResponse> {
        self.modifyEventConfig(.init(mode: mode, notificationUrl: notificationUrl, uploadMediaCompleteEventSwitch: uploadMediaCompleteEventSwitch, deleteMediaCompleteEventSwitch: deleteMediaCompleteEventSwitch, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改事件通知配置
    ///
    /// 腾讯云点播为客户提供了媒体上传、媒体管理、媒体处理等等服务，在这些服务执行过程或执行结束时，腾讯云点播也提供各种对应的事件通知，方便开发者感知服务处理状态，并做下一步的业务操作。
    ///
    /// 开发者可以通过调用本接口来实现：
    /// - 设置接收回调通知的类型，目前有[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 和 [基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779) 两种类型。
    /// - 对于[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)，可设置 3.0 格式回调的地址。3.0 格式回调的说明参见 [历史格式回调](https://cloud.tencent.com/document/product/266/33796)。
    /// - 对具体事件服务的通知事件选择设置接收或者忽略。
    @inlinable @discardableResult
    public func modifyEventConfig(mode: String? = nil, notificationUrl: String? = nil, uploadMediaCompleteEventSwitch: String? = nil, deleteMediaCompleteEventSwitch: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEventConfigResponse {
        try await self.modifyEventConfig(.init(mode: mode, notificationUrl: notificationUrl, uploadMediaCompleteEventSwitch: uploadMediaCompleteEventSwitch, deleteMediaCompleteEventSwitch: deleteMediaCompleteEventSwitch, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
