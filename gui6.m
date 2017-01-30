function varargout = gui6(varargin)
% GUI6 MATLAB code for gui6.fig
%      GUI6, by itself, creates a new GUI6 or raises the existing
%      singleton*.
%
%      H = GUI6 returns the handle to a new GUI6 or the handle to
%      the existing singleton*.
%
%      GUI6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI6.M with the given input arguments.
%
%      GUI6('Property','Value',...) creates a new GUI6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui6

% Last Modified by GUIDE v2.5 23-Apr-2016 01:43:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui6_OpeningFcn, ...
                   'gui_OutputFcn',  @gui6_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui6 is made visible.
function gui6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui6 (see VARARGIN)

% Choose default command line output for gui6
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
F = getappdata(0,'evalue15');
set(handles.text3, 'String', F);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add=get(handles.uipanel2,'SelectedObject');
Selection=get(add,'String');
Z=strcmp(Selection,'Yes');
left= getappdata(0,'evalue11');
str= getappdata(0,'evalue12');
right= getappdata(0,'evalue13');
result= getappdata(0,'evalue14');
str
right
left
result
if(Z==1);
    Z
    x=[left,right,str,result];
    x
    dlmwrite('slant.txt',x,'newline','pc','-append');
end
gui7;
close(gui6);
