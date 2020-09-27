function varargout = Programa1(varargin)
% PROGRAMA1 MATLAB code for Programa1.fig
%      PROGRAMA1, by itself, creates a new PROGRAMA1 or raises the existing
%      singleton*.
%
%      H = PROGRAMA1 returns the handle to a new PROGRAMA1 or the handle to
%      the existing singleton*.
%
%      PROGRAMA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAMA1.M with the given input arguments.
%
%      PROGRAMA1('Property','Value',...) creates a new PROGRAMA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Programa1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Programa1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Programa1

% Last Modified by GUIDE v2.5 22-Sep-2020 23:04:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Programa1_OpeningFcn, ...
                   'gui_OutputFcn',  @Programa1_OutputFcn, ...
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


% --- Executes just before Programa1 is made visible.
function Programa1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Programa1 (see VARARGIN)

% Choose default command line output for Programa1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Programa1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Programa1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function textX_Callback(hObject, eventdata, handles)
% hObject    handle to textX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textX as text
%        str2double(get(hObject,'String')) returns contents of textX as a double


% --- Executes during object creation, after setting all properties.
function textX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonX.
function ButtonX_Callback(hObject, eventdata, handles)
%     x = str2num(get(handles.textX, 'string'));
%     y = str2num(get(handles.textY, 'string'));
    a = str2num(get(handles.textA, 'string'));
    
    x1 = str2num(get(handles.TraX, 'string'));
    y1 = str2num(get(handles.TraY, 'string'));
    z1 = str2num(get(handles.TraZ, 'string'));
    
%    Sistema de referencia que define B; 
    matriz = [1 0 0 x1;
        cos(a*pi/180) -sin(a*pi/180) 0 y1;
        sin(a*pi/180) cos(a*pi/180) 0 z1;
        0 0 0 1];
    
%     Opera��o para inverter matriz original;
    inversa = inv (matriz);
    
    
    clc;
    disp('--------Sistema de referencia que define B (T de A em rela��o a A)--------');
    disp(matriz);
    disp('--------T DE B PARA A--------');
    disp(inversa);
    
% hObject    handle to ButtonX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function textY_Callback(hObject, eventdata, handles)
% hObject    handle to textY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textY as text
%        str2double(get(hObject,'String')) returns contents of textY as a double


% --- Executes during object creation, after setting all properties.
function textY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textA_Callback(hObject, eventdata, handles)
% hObject    handle to textA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

   

% Hints: get(hObject,'String') returns contents of textA as text
%        str2double(get(hObject,'String')) returns contents of textA as a double


% --- Executes during object creation, after setting all properties.
function textA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonY.
function ButtonY_Callback(hObject, eventdata, handles)
%     x = str2num(get(handles.textX, 'string'));
%     y = str2num(get(handles.textY, 'string'));
    a = str2num(get(handles.textA, 'string'));
    
    x1 = str2num(get(handles.TraX, 'string'));
    y1 = str2num(get(handles.TraY, 'string'));
    z1 = str2num(get(handles.TraZ, 'string'));

%     Sistema de referencia que define B;
    matriz = [cos(a*pi/180) 0 -sin(a*pi/180) x1;
        0 1 0 y1;
        sin(a*pi/180) 0 cos(a*pi/180) z1;
        0 0 0 1];


    
    
%     Opera��o para inverter matriz original;
    inversa = inv (matriz);
    
    
    clc;
    disp('--------Sistema de referencia que define B (T de A em rela��o a A)--------');
    disp(matriz);
    disp('--------T DE B PARA A--------');
    disp(inversa);
    
    

% hObject    handle to ButtonY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function TraX_Callback(hObject, eventdata, handles)
% hObject    handle to TraX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TraX as text
%        str2double(get(hObject,'String')) returns contents of TraX as a double


% --- Executes during object creation, after setting all properties.
function TraX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TraX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TraY_Callback(hObject, eventdata, handles)
% hObject    handle to TraY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TraY as text
%        str2double(get(hObject,'String')) returns contents of TraY as a double


% --- Executes during object creation, after setting all properties.
function TraY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TraY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TraZ_Callback(hObject, eventdata, handles)
% hObject    handle to TraZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TraZ as text
%        str2double(get(hObject,'String')) returns contents of TraZ as a double


% --- Executes during object creation, after setting all properties.
function TraZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TraZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TextZ_Callback(hObject, eventdata, handles)
% hObject    handle to TextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TextZ as text
%        str2double(get(hObject,'String')) returns contents of TextZ as a double


% --- Executes during object creation, after setting all properties.
function TextZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TextZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonZ.
function ButtonZ_Callback(hObject, eventdata, handles)
    
%     x = str2num(get(handles.textX, 'string'));
%     y = str2num(get(handles.textY, 'string'));
    a = str2num(get(handles.textA, 'string'));
    
    x1 = str2num(get(handles.TraX, 'string'));
    y1 = str2num(get(handles.TraY, 'string'));
    z1 = str2num(get(handles.TraZ, 'string'));
    
%     Sistema de referencia que define B;
    matriz = [cos(a*pi/180) -sin(a*pi/180) 0 x1;
        sin(a*pi/180) cos(a*pi/180) 0 y1;
        0 0 1 z1;
        0 0 0 1];
   
    
%     Opera��o para inverter matriz original;
    inversa = inv (matriz);
    
    
    clc;
    disp('--------Sistema de referencia que define B (T de A em rela��o a A)--------');
    disp(matriz);
    disp('--------T DE B PARA A--------');
    disp(inversa);
% hObject    handle to ButtonZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
